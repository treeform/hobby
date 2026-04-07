## Scans all hobby packages from README.md using the `gh` CLI tool
## and outputs a markdown status table.
##
## Usage: nim r scan.nim

import std/[osproc, strutils, re, os]

type
  Repo = object
    name: string
    owner: string
    repo: string

proc gh(args: string): string =
  let (output, exitCode) = execCmdEx("gh " & args)
  if exitCode != 0: return ""
  return output.strip()

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
  gh("api repos/" & r.slug & " --jq '.stargazers_count'")

proc getOpenPRs(r: Repo): string =
  gh("api \"repos/" & r.slug & "/pulls?state=open&per_page=100\" --jq 'length'")

proc getOpenIssues(r: Repo): string =
  # GitHub's open_issues_count includes PRs, so subtract them.
  let total = gh("api repos/" & r.slug & " --jq '.open_issues_count'")
  let prs = getOpenPRs(r)
  try:
    result = $(parseInt(total) - parseInt(prs))
  except ValueError:
    result = total

proc getLatestVersion(r: Repo): string =
  let tag = gh("api repos/" & r.slug & "/releases/latest --jq '.tag_name'")
  if tag.len > 0: tag else: "-"

proc getLastUpdate(r: Repo): string =
  ## Last push date, trimmed to YYYY-MM-DD.
  let pushed = gh("api repos/" & r.slug & " --jq '.pushed_at'")
  if pushed.len >= 10: pushed[0..9] else: "-"

proc getCIStatus(r: Repo): string =
  let conclusion = gh(
    "api \"repos/" & r.slug &
    "/actions/runs?per_page=1\" --jq '.workflow_runs[0].conclusion'"
  )
  case conclusion
  of "success": "🟢"
  of "failure": "🔴"
  of "": "⚪"
  else: "🟡 " & conclusion

proc main() =
  let readmePath = currentSourcePath().parentDir() / "README.md"
  if not fileExists(readmePath):
    echo "ERROR: README.md not found at: ", readmePath
    quit(1)

  let repos = parseRepos(readmePath)
  echo "Scanning ", repos.len, " repositories..."
  echo ""

  var rows: seq[array[7, string]]

  for i, r in repos:
    stdout.write("[" & $(i + 1) & "/" & $repos.len & "] " & r.slug & "...")
    stdout.flushFile()

    let stars = getStars(r)
    let issues = getOpenIssues(r)
    let prs = getOpenPRs(r)
    let ci = getCIStatus(r)
    let version = getLatestVersion(r)
    let updated = getLastUpdate(r)

    let nameLink = "[" & r.name & "](https://github.com/" & r.slug & ")"
    rows.add [nameLink, stars, issues, prs, ci, version, updated]
    echo " done"

  echo ""

  # Write markdown table to file and stdout.
  var md = "# Hobby Package Status\n\n"
  md &= "| Package | ⭐ Stars | 🏷 Version | 📅 Updated | 🐛 Issues | 📬 PRs | 🔨 CI |\n"
  md &= "|---------|---------|-----------|-----------|----------|-------|-------|\n"
  for row in rows:
    md &= "| " & row[0] &
      " | " & row[1] &
      " | " & row[5] &
      " | " & row[6] &
      " | " & row[2] &
      " | " & row[3] &
      " | " & row[4] &
      " |\n"

  let outPath = currentSourcePath().parentDir() / "STATUS.md"
  writeFile(outPath, md)
  echo md
  echo "Table written to: ", outPath

main()
