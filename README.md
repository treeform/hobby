# Treeform's & Guzba's hobby

Our hobby is to create Nim libraries that end with y. Here is a list of our libraries and short description on why you should is them:

Most of them only depend on Nim Standard library or our other libraries.

All MIT licensed!


## [Pixie](https://github.com/treeform/pixie)

![Github Actions](https://github.com/treeform/pixie/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/pixie)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/pixie)
![GitHub](https://img.shields.io/github/license/treeform/pixie)
![GitHub issues](https://img.shields.io/github/issues/treeform/pixie)

Pixie is a 2D graphics library similar to Cairo and Skia written entirely in Nim.

* Typesetting and rasterizing text, including styled rich text via spans.
* Drawing paths, shapes and curves with even-odd and non-zero windings.
* Pixel-perfect AA quality.
* Supported file formats are PNG, BMP, JPG, SVG + more in development.
* Strokes with joins and caps.
* Shadows, glows and blurs.
* Complex masking: Subtract, Intersect, Exclude.
* Complex blends: Darken, Multiply, Color Dodge, Hue, Luminosity... etc.
* Many operations are SIMD accelerated.

## [Fidget 2](https://github.com/treeform/fidget2)

![Github Actions](https://github.com/treeform/fidget2/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/fidget2)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/fidget2)
![GitHub](https://img.shields.io/github/license/treeform/fidget2)
![GitHub issues](https://img.shields.io/github/issues/treeform/fidget2)

Fidget2 aims to provide natively compiled cross platform UIs for any platform - Web with HTML5 (WASM), Windows, macOS, and Linux.

Fidget2 leverages [Figma](https://www.figma.com/) - an app that is taking the design world by storm. Fidget2 uses Figma API to load designs directly. No more counting pixels, no more CSS puzzles. Want to change some spaces? Change it in Figma, press F5 in your see the changes in real time!


## [Ws](https://github.com/treeform/ws)

![Github Actions](https://github.com/treeform/ws/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/ws)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/ws)
![GitHub](https://img.shields.io/github/license/treeform/ws)
![GitHub issues](https://img.shields.io/github/issues/treeform/ws)

Simple WebSocket library for nim.

* Client and Server Side WebSocket
* Async/Await Support
* WebSocket Protocols
* Timeouts and Disconnects
* SSL support
* Jester support
* Compliant with the [WebSocket protocol](https://tools.ietf.org/html/rfc6455).



## [Zippy](https://github.com/guzba/zippy)

![Github Actions](https://github.com/guzba/zippy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/zippy)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/zippy)
![GitHub](https://img.shields.io/github/license/guzba/zippy)
![GitHub issues](https://img.shields.io/github/issues/guzba/zippy)

Zippy is an implementation of DEFLATE, ZLIB and GZIP data compression formats.

Zippy can also open ZIP archives (.zip) and Tarballs (.tar, .tar.gz, .tgz, .taz).

The goal of this library is to be a pure Nim implementation that is small, performant and dependency-free.


## [Jsony](https://github.com/treeform/jsony)

![Github Actions](https://github.com/treeform/jsony/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/jsony)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/jsony)
![GitHub](https://img.shields.io/github/license/treeform/jsony)
![GitHub issues](https://img.shields.io/github/issues/treeform/jsony)

A loose, direct to object JSON parser and serializer with hooks.

Real world json is never what you want. It might have extra fields that you don't care about. It might have missing fields requiring default values. It might change or grow new fields at any moment. Json might use camelCase or snake_case. It might use inconsistent naming.

With this library you can use json your way, from the mess you get to the objects you want.

* Parses and serializes JSON very fast.
* newHook, postHook, enumHook, renameHook, parseHook, dumpHook, skipHook
* Support for JSON-in-JSON and raw JSON.



## [Mummy](https://github.com/guzba/mummy)

![Github Actions](https://github.com/guzba/mummy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/mummy)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/mummy)
![GitHub](https://img.shields.io/github/license/guzba/mummy)
![GitHub issues](https://img.shields.io/github/issues/guzba/mummy)

Mummy is a multi-threaded HTTP 1.1 and WebSocket server written entirely in Nim.
Mummy has been written specifically to maximize the performance of your server hardware without compromising on programmer happiness.

* Supports HTTP keep-alive and gzip response compression automatically.
* Built-in first-class WebSocket support.
* Multiplexed socket IO without the {.async.} price.



## [Genny](https://github.com/treeform/genny)

![Github Actions](https://github.com/treeform/genny/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/genny)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/genny)
![GitHub](https://img.shields.io/github/license/treeform/genny)
![GitHub issues](https://img.shields.io/github/issues/treeform/genny)

Generate Nim library bindings for many languages

So you made a cool Nim library but you want it to be available to other languages as well. With `genny` you can generate a dynamically linked library with a simple C API and generated bindings for many languages. In some ways its similar to [SWIG](http://www.swig.org/) project for C or [djinni](https://github.com/dropbox/djinni) for C++.



## [Puppy](https://github.com/treeform/puppy)

![Github Actions](https://github.com/treeform/puppy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/puppy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/puppy)
![GitHub](https://img.shields.io/github/license/treeform/puppy)
![GitHub issues](https://img.shields.io/github/issues/treeform/puppy)

Fetch resources via HTTP and HTTPS.

Puppy does not use Nim's HTTP stack, instead it uses `WinHttp` API on Windows , `AppKit` on macOS, and `libcurl` on Linux. Because Puppy uses system APIs, there is no need to ship extra `*.dll`s, `cacert.pem`, or forget to pass the `-d:ssl` flag. This also has the effect of producing slightly smaller binaires.



## [Netty](https://github.com/treeform/netty)

![Github Actions](https://github.com/treeform/netty/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/netty)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/netty)
![GitHub](https://img.shields.io/github/license/treeform/netty)
![GitHub issues](https://img.shields.io/github/issues/treeform/netty)

Reliable UDP connection for Nim.

Netty is a reliable connection over UDP aimed at games. Normally UDP packets can get duplicated, dropped, or come out of order. Netty makes sure packets are not duplicated, re-sends them if they get dropped, and all packets come in order. UDP packets might also get split if they are above 512 bytes and also can fail to be sent if they are bigger than 1-2k. Netty breaks up big packets and sends them in pieces making sure each piece comes reliably in order. Finally sometimes it's impossible for two clients to communicate direclty with TCP because of NATs, but Netty provides hole punching which allows them to connect.


## [Shady](https://github.com/treeform/shady)

![Github Actions](https://github.com/treeform/shady/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/shady)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/shady)
![GitHub](https://img.shields.io/github/license/treeform/shady)
![GitHub issues](https://img.shields.io/github/issues/treeform/shady)

Nim to GPU shader language compiler and supporting utilities.

Shady can compile a subset of Nim into `OpenGL Shader Language` used by the GPU. This allows you to test your shader code with `echo` statements on the CPU and then run the exact same code on the GPU.

* Write vertex and fragment/pixel shaders for games and 3d applications.
* Write compute shaders for offline processing and number crunching.


## [Nim Template](https://github.com/treeform/nimtemplate)

![Github Actions](https://github.com/treeform/nimtemplate/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/nimtemplate)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/nimtemplate)
![GitHub](https://img.shields.io/github/license/treeform/nimtemplate)
![GitHub issues](https://img.shields.io/github/issues/treeform/nimtemplate)

You can use this nim template to jump start your nim library or project.

This template includes:
* MIT licence
* src directory and a private common.nim
* test directory
* GitHub Actions to run the tests on GitHub


## [Chroma](https://github.com/treeform/chroma)

![Github Actions](https://github.com/treeform/chroma/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/chroma)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/chroma)
![GitHub](https://img.shields.io/github/license/treeform/chroma)
![GitHub issues](https://img.shields.io/github/issues/treeform/chroma)

Everything you want to do with colors.

* Color spaces: `CMY`, `CMYK`, `HSL`, `HSV`, `YUV`, `XYZ`, `LAB`, `CIELCh`, `LUV`, `CIELCH`, `Oklab`
* Easily parse and transform colors. `FFFFFF`,  `#FFFFFF`, `rgb(255, 255, 255)`,  `rgba(255, 255, 255, 1.0)`
* Optimized to be fast and consistent.



## [Windy](https://github.com/treeform/windy)

![Github Actions](https://github.com/treeform/windy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/windy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/windy)
![GitHub](https://img.shields.io/github/license/treeform/windy)
![GitHub issues](https://img.shields.io/github/issues/treeform/windy)

Windy will work great for 2D and 3D OpenGL games as well as GUI apps using OpenGL. Using this library should feel similar to GLFW or SDL.

Features:

* Multi-platform (Windows, macOS, Linux)
* Manage one or many windows
* Customizable windows (resizable, hidden, fullscreen and more)
* Use custom window icons and cursors
* DPI and content-scaling aware
* Mouse input (position, clicks, scroll)
* Double-click, triple-click and quadruple-click events
* Keyboard input (key events + unicode)
* Easy polling of keyboard state via buttonDown[Button] and more
* IME support (for Chinese, Japanese etc text input)
* System clipboard (copy and paste) support
* Show a system tray icon and menu (Windows only)
* Non-blocking HTTP requests and WebSockets
* Basic Example



## [Boxy](https://github.com/treeform/boxy)

![Github Actions](https://github.com/treeform/boxy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/boxy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/boxy)
![GitHub](https://img.shields.io/github/license/treeform/boxy)
![GitHub issues](https://img.shields.io/github/issues/treeform/boxy)

Boxy is an easy to use 2D GPU rendering API built on top of Pixie.

The basic model for using Boxy goes something like this:

* Open a window and prepare an OpenGL context.
* Load image files like .png using Pixie.
* Render any dynamic assets (such as text) into images once using Pixie.
* Add these images to Boxy, where they are put into a tiling atlas texture.
* Draw these images to screen each frame.



## [Flatty](https://github.com/treeform/flatty)

![Github Actions](https://github.com/treeform/flatty/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/flatty)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/flatty)
![GitHub](https://img.shields.io/github/license/treeform/flatty)
![GitHub issues](https://img.shields.io/github/issues/treeform/flatty)

Serializer and tools for flat binary blobs.

* Aim of `flatty` is to be the fastest and simplest serializer/deserializer for Nim.
* Also includes `hexprint` to print out binary data.
* Also includes `binny` a simpler replacement for StringStream (no IO effects, operates on a string)
* Also includes `hashy` a hash for any objects based on the flatty serializer.
* Also includes `encode` a way to convert to/from utf16 BE/LE and with BOM and utf32.



## [VMath](https://github.com/treeform/vmath)

![Github Actions](https://github.com/treeform/vmath/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/vmath)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/vmath)
![GitHub](https://img.shields.io/github/license/treeform/vmath)
![GitHub issues](https://img.shields.io/github/issues/treeform/vmath)

Vector math routines for 2d and 3d graphics.

* Pure Nim with no dependencies.
* 2D & 3D matrix math
* Transform, Rotation and Scale Matrixes
* All (`vec3`, `ivec3`, `dvec3`, `uvec3`, `bvec3`, ...) GLSL types!
* Very similar to GLSL Shader Language with extra stuff.
* Extensively benchmarked.



## [SuperSnappy](https://github.com/guzba/supersnappy)

![Github Actions](https://github.com/guzba/supersnappy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/supersnappy)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/supersnappy)
![GitHub](https://img.shields.io/github/license/guzba/supersnappy)
![GitHub issues](https://img.shields.io/github/issues/guzba/supersnappy)

Supersnappy is a pure Nim implementation of Google's Snappy compression algorithm. The goal of this library is to be small, straightforward, dependency-free and highly performant.

Benchmarking shows this library performs significantly better in all cases than alternatives even the original C++ reference implementation.



## [Chrono](https://github.com/treeform/chrono)

![Github Actions](https://github.com/treeform/chrono/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/chrono)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/chrono)
![GitHub](https://img.shields.io/github/license/treeform/chrono)
![GitHub issues](https://img.shields.io/github/issues/treeform/chrono)

Timestamps, Calendars, and Timezones library for nim.

* Parse Timestamps
* Format Timestamps
* Manipulate Calendars
* Use Timezones
* In JS mode: only ship the Timezones you use.



## [Benchy](https://github.com/treeform/benchy)

![Github Actions](https://github.com/treeform/benchy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/benchy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/benchy)
![GitHub](https://img.shields.io/github/license/treeform/benchy)
![GitHub issues](https://img.shields.io/github/issues/treeform/benchy)

Simple benchmarking to time your code.

 Just put your code in a `timeIt` block. Also put result of your computation into `keep()` so that compiler does not optimize it out. Don't forgot to run with `-d:release` or better yet `-d:danger`.



## [Spacy](https://github.com/treeform/spacy)

![Github Actions](https://github.com/treeform/spacy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/spacy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/spacy)
![GitHub](https://img.shields.io/github/license/treeform/spacy)
![GitHub issues](https://img.shields.io/github/issues/treeform/spacy)

Spatial data structures for Nim.

Spatial algorithms are used to find the "closest" things faster than simple brute force iteration would. They make your code run faster using smarter data structures. This library has different "Spaces" that you can use to speed up games and graphical applications.

* BruteSpace (for loop)
* SortSpace (quick sort)
* HashSpace (2d hash table)
* QuadSpace (Quad-tree)
* KdSpace (KD-tree)



## [Orbits](https://github.com/treeform/orbits)

![Github Actions](https://github.com/treeform/orbits/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/orbits)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/orbits)
![GitHub](https://img.shields.io/github/license/treeform/orbits)
![GitHub issues](https://img.shields.io/github/issues/treeform/orbits)

Orbits are beautiful, with their gentle curves and sweeping arcs. They have captivated astronomers for thousands of years and have made mathematics and physics to what they are today. There is so much to the orbits if you dig dipper. Where do you get most accurate data? How do you compute transfer windows? Can you plot trajectories of spacecraft? This is what this library is about. An exploration of deep beyond with Nim at your side.

* Simple Elliptical Orbits
* Kernel Files Orbits (NASA's .bsp SPICE SP-kernels)
* JPL Horizon Orbits
* Simulations
* Astrometry



## [Bumpy](https://github.com/treeform/bumpy)

![Github Actions](https://github.com/treeform/bumpy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/bumpy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/bumpy)
![GitHub](https://img.shields.io/github/license/treeform/bumpy)
![GitHub issues](https://img.shields.io/github/issues/treeform/bumpy)

2D geometry intersections library for Nim.

* Point
* Circle
* Rectangle
* Segment
* Polygon
* Line



## [Webby](https://github.com/treeform/webby)

![Github Actions](https://github.com/treeform/webby/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/webby)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/webby)
![GitHub](https://img.shields.io/github/license/treeform/webby)
![GitHub issues](https://img.shields.io/github/issues/treeform/webby)

Webby is a collection of common HTTP data structures and functionality. This includes things parsing and generating:

* Url
* HTTP headers
* Query Parameters



## [Slappy](https://github.com/treeform/slappy)

![Github Actions](https://github.com/treeform/slappy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/slappy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/slappy)
![GitHub](https://img.shields.io/github/license/treeform/slappy)
![GitHub issues](https://img.shields.io/github/issues/treeform/slappy)

3D Sound API for Nim.

* `.wav` and `.ogg` loading.
* 3d positions of sounds.
* 3d position of listener.
* Doppler shift.
* Acoustic attenuation.



## [Bitty](https://github.com/treeform/bitty)

![Github Actions](https://github.com/treeform/bitty/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/bitty)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/bitty)
![GitHub](https://img.shields.io/github/license/treeform/bitty)
![GitHub issues](https://img.shields.io/github/issues/treeform/bitty)

1D and 2D bit arrays and operations.

If you have types like `seq[bool]` in your code, switching to bit arrays will cut down on space used.



## [Steganography](https://github.com/treeform/steganography)

![Github Actions](https://github.com/treeform/steganography/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/steganography)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/steganography)
![GitHub](https://img.shields.io/github/license/treeform/steganography)
![GitHub issues](https://img.shields.io/github/issues/treeform/steganography)

Hide data inside an image. Encode and decode images.



## [Taggy](https://github.com/treeform/taggy)

![Github Actions](https://github.com/treeform/taggy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/taggy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/taggy)
![GitHub](https://img.shields.io/github/license/treeform/taggy)
![GitHub issues](https://img.shields.io/github/issues/treeform/taggy)

* HTML Parser/Serializer
* XML Parser/Serializer
* Static HTML Generator
* Static CSS Generator



## [Tabby](https://github.com/treeform/tabby)

![Github Actions](https://github.com/treeform/tabby/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/tabby)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/tabby)
![GitHub](https://img.shields.io/github/license/treeform/tabby)
![GitHub issues](https://img.shields.io/github/issues/treeform/tabby)

Fast CSV parser with hooks.

This library parses `.csv` or `.tsv` files directly into Nim objects. This is different from how Nim's standard library [parsecsv](https://nim-lang.org/docs/parsecsv.html) works which first parses them into an intermediate representation. This makes `tabby` generate fewer memory allocations.



## [NimSIMD](https://github.com/guzba/nimsimd)

![Github Actions](https://github.com/guzba/nimsimd/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/nimsimd)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/nimsimd)
![GitHub](https://img.shields.io/github/license/guzba/nimsimd)
![GitHub issues](https://img.shields.io/github/issues/guzba/nimsimd)

Pleasant Nim bindings for various SIMD instructions.

* SSE
* SSE2
* SSE3
* SSSE3
* SSE4.1
* SSE4.2
* AVX
* AVX2
* PCLMULQDQ


## [Ready](https://github.com/guzba/ready)

![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/ready)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/ready)
![GitHub](https://img.shields.io/github/license/guzba/ready)
![GitHub issues](https://img.shields.io/github/issues/guzba/ready)

Redis client that is built to work well in multi-threaded programs. A great use-case for Ready is in a multi-threaded HTTP server like Mummy.


## [Crunchy](https://github.com/guzba/crunchy)

![Github Actions](https://github.com/guzba/crunchy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/crunchy)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/crunchy)
![GitHub](https://img.shields.io/github/license/guzba/crunchy)
![GitHub issues](https://img.shields.io/github/issues/guzba/crunchy)

Crunchy provides pure Nim implementations of common hashes and data integrity checks (cyclic redundancy checks and checksums). These implementations are intended to be high-performance, including amd64 and arm64 SIMD implementations or using instruction set intrinsics.

* SHA-256
* CRC-32
* CRC-32C
* Adler-32



## [Whisky](https://github.com/guzba/whisky)

![Github Actions](https://github.com/guzba/whisky/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/whisky)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/whisky)
![GitHub](https://img.shields.io/github/license/guzba/whisky)
![GitHub issues](https://img.shields.io/github/issues/guzba/whisky)

Blocking WebSocket client. This library provides an alternative to async for situations where it is easier or more comfortable to write blocking code.



## [Curly](https://github.com/guzba/curly)

![Github Actions](https://github.com/guzba/curly/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/curly)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/curly)
![GitHub](https://img.shields.io/github/license/guzba/curly)
![GitHub issues](https://img.shields.io/github/issues/guzba/curly)

Curly makes pooling and reusing `libcurl` handles easy.

Why pool and reuse `libcurl` handles? Doing so enables reusing Keep-Alive connections. This is especially beneficial for servers frequently making requests to HTTPS endpoints by skipping the need to open a new connection and do a TLS handshake for every request.



## [JWTea](https://github.com/guzba/jwtea)

![Github Actions](https://github.com/guzba/jwtea/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/guzba/jwtea)
![GitHub Repo stars](https://img.shields.io/github/stars/guzba/jwtea)
![GitHub](https://img.shields.io/github/license/guzba/jwtea)
![GitHub issues](https://img.shields.io/github/issues/guzba/jwtea)

JWTea enables the creation of JSON Web Tokens in pure Nim, without any dependency on OpenSSL or other external libraries. OpenSSL is one of the truly legendary sources of programmer pain so this repo was motivated by refusing that dependency.

* HS256
* RS256


## [Pretty](https://github.com/treeform/pretty)

![Github Actions](https://github.com/treeform/pretty/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/pretty)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/pretty)
![GitHub](https://img.shields.io/github/license/treeform/pretty)
![GitHub issues](https://img.shields.io/github/issues/treeform/pretty)

A pretty prettying, better echo.

Use `pretty`.`print` the same way you would use `echo` for pretty-debugging. It pretty prints objects the "Nim way" with syntax highlighting. Even with refs, pointers, or cycles!


# Deprecated libraries

We have written some libraries that we are not longer maintaining:

* [Urlly](https://github.com/treeform/urlly) - use [Webby](https://github.com/treeform/webby) instead.
* [Typography](https://github.com/treeform/typography) - use [Pixie](https://github.com/treeform/pixie) instead.
* [StaticGLFW](https://github.com/treeform/staticglfw) - use [Windy](https://github.com/treeform/windy) instead.
* [Flippy](https://github.com/treeform/flippy) - use [Pixie](https://github.com/treeform/pixie) instead.
* [Print](https://github.com/treeform/print) - use [Pretty](https://github.com/treeform/pretty) instead.
