## Scans all hobby packages from README.md using the `gh` CLI tool
## and outputs a markdown status table.
##
## Usage: nim r scan.nim

import std/[algorithm, osproc, strutils, re, os, streams]

type
  Repo = object
    name: string
    owner: string
    repo: string

proc gh(args: openArray[string]): string =
  try:
    let process = startProcess(
      "gh",
      args = args,
      options = {poUsePath, poStdErrToStdOut}
    )
    defer: process.close()

    let output = process.outputStream.readAll()
    let exitCode = process.waitForExit()
    if exitCode != 0:
      return ""
    result = output.strip()
  except CatchableError:
    result = ""

proc parseRepos(readmePath: string): seq[Repo] =
  let content = readFile(readmePath)
  let pattern = re"^## \[(.+?)\]\(https://github\.com/(\w+)/(\w+)\)"
  for line in content.splitLines():
    if line.startsWith("# Deprecated"):
      break
    var matches: array[3, string]
    if line.match(pattern, matches):
      result.add Repo(name: matches[0], owner: matches[1], repo: matches[2])

proc slug(r: Repo): string =
  r.owner & "/" & r.repo

proc getStars(r: Repo): string =
  gh(["api", "repos/" & r.slug, "--jq", ".stargazers_count"])

proc getOpenPRs(r: Repo): string =
  gh(["api", "repos/" & r.slug & "/pulls?state=open&per_page=100", "--jq", "length"])

proc getOpenIssues(r: Repo): string =
  # GitHub's open_issues_count includes PRs, so subtract them.
  let total = gh(["api", "repos/" & r.slug, "--jq", ".open_issues_count"])
  let prs = getOpenPRs(r)
  try:
    result = $(parseInt(total) - parseInt(prs))
  except ValueError:
    result = total

proc getLatestVersion(r: Repo): string =
  let tag = gh(["api", "repos/" & r.slug & "/releases/latest", "--jq", ".tag_name"])
  if tag.len > 0: tag else: "-"

proc getCommitsSinceRelease(r: Repo, tag: string): string =
  if tag.len == 0 or tag == "-":
    return "-"

  let commits = gh(
    ["api", "repos/" & r.slug & "/compare/" & tag & "...HEAD",
      "--jq", ".total_commits"]
  )
  if commits.len > 0: commits else: "-"

proc getLastUpdate(r: Repo): string =
  ## Last push date, trimmed to YYYY-MM-DD.
  let pushed = gh(["api", "repos/" & r.slug, "--jq", ".pushed_at"])
  if pushed.len >= 10: pushed[0..9] else: "-"

proc getCIStatus(r: Repo): string =
  let conclusion = gh(
    ["api", "repos/" & r.slug & "/actions/runs?per_page=1",
      "--jq", ".workflow_runs[0].conclusion"]
  )
  case conclusion
  of "success": "🟢"
  of "failure": "🔴"
  of "": "⚪"
  else: "🟡 " & conclusion

proc getBuildYaml(r: Repo): string =
  result = gh(
    ["api", "-H", "Accept: application/vnd.github.raw",
      "repos/" & r.slug & "/contents/.github/workflows/build.yml"]
  )
  if result.len == 0:
    result = gh(
      ["api", "-H", "Accept: application/vnd.github.raw",
        "repos/" & r.slug & "/contents/.github/workflows/build.yaml"]
    )

proc splitShellCommands(line: string): seq[string] =
  var command = ""
  for c in line:
    if c in {';', '&', '|'}:
      let stripped = command.strip()
      if stripped.len > 0:
        result.add stripped
      command = ""
    else:
      command.add c

  let stripped = command.strip()
  if stripped.len > 0:
    result.add stripped

proc commandName(token: string): string =
  result = token.strip(chars = {'"', '\'', '`'})
  for sep in ['/', '\\']:
    let i = result.rfind(sep)
    if i >= 0:
      result = result[i + 1 .. ^1]
  if result.endsWith(".exe"):
    result = result[0 .. ^5]

proc isShellAssignment(token: string): bool =
  let i = token.find('=')
  i > 0 and not token.startsWith("-")

proc callsTool(command, tool: string): bool =
  const wrappers = ["sudo", "time", "command", "exec", "env"]
  let tokens = command.splitWhitespace()
  for token in tokens:
    if isShellAssignment(token):
      continue

    let name = commandName(token)
    if name in wrappers:
      continue

    return name == tool

proc workflowCallsTool(content, tool: string): bool =
  for rawLine in content.splitLines():
    var line = rawLine.strip()
    if line.startsWith("- run:"):
      line = line[6 .. ^1].strip()
    elif line.startsWith("run:"):
      line = line[4 .. ^1].strip()

    for command in splitShellCommands(line):
      if callsTool(command, tool):
        return true

proc getYamlTool(r: Repo): string =
  let content = getBuildYaml(r).toLowerAscii()
  if content.len == 0:
    return "-"

  let usesNimby = workflowCallsTool(content, "nimby")
  let usesNimble = workflowCallsTool(content, "nimble")
  if usesNimby and usesNimble:
    "both"
  elif usesNimby:
    "nimby"
  elif usesNimble:
    "nimble"
  else:
    "-"

proc starCount(row: array[9, string]): int =
  try:
    parseInt(row[1])
  except ValueError:
    0

proc main() =
  let readmePath = currentSourcePath().parentDir() / "README.md"
  if not fileExists(readmePath):
    echo "ERROR: README.md not found at: ", readmePath
    quit(1)

  let repos = parseRepos(readmePath)
  echo "Scanning ", repos.len, " repositories..."
  echo ""

  var rows: seq[array[9, string]]

  for i, r in repos:
    stdout.write("[" & $(i + 1) & "/" & $repos.len & "] " & r.slug & "...")
    stdout.flushFile()

    let stars = getStars(r)
    let issues = getOpenIssues(r)
    let prs = getOpenPRs(r)
    let ci = getCIStatus(r)
    let version = getLatestVersion(r)
    let commitsSinceRelease = getCommitsSinceRelease(r, version)
    let updated = getLastUpdate(r)
    let yamlTool = getYamlTool(r)

    let nameLink = "[" & r.name & "](https://github.com/" & r.slug & ")"
    rows.add [nameLink, stars, issues, prs, ci, version, updated, commitsSinceRelease, yamlTool]
    echo " done"

  echo ""

  rows.sort do (a, b: array[9, string]) -> int:
    cmp(starCount(b), starCount(a))

  # Write markdown table to file and stdout.
  var md = "# Hobby Package Status\n\n"
  md &= "| Package | ⭐ Stars | 🏷 Version | Commits Since Release | 📅 Updated | 🐛 Issues | 📬 PRs | 🔨 CI | YAML |\n"
  md &= "|---------|---------|-----------|-----------------------|-----------|----------|-------|-------|------|\n"
  for row in rows:
    md &= "| " & row[0] &
      " | " & row[1] &
      " | " & row[5] &
      " | " & row[7] &
      " | " & row[6] &
      " | " & row[2] &
      " | " & row[3] &
      " | " & row[4] &
      " | " & row[8] &
      " |\n"

  let outPath = currentSourcePath().parentDir() / "STATUS.md"
  writeFile(outPath, md)
  echo md
  echo "Table written to: ", outPath

main()
