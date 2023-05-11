# Treeform's & Guzba's hobby

Our hobby is to create Nim libraries that end with y. Here is a list of our libraries and short description on why you should is them:

## Pixie

<img src="https://github.com/treeform/pixie/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/pixie/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/pixie)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/pixie)
![GitHub](https://img.shields.io/github/license/treeform/pixie)
![GitHub issues](https://img.shields.io/github/issues/treeform/pixie)

Pixie is a 2D graphics library similar to Cairo and Skia written entirely in Nim.

Features:

* Typesetting and rasterizing text, including styled rich text via spans.
* Drawing paths, shapes and curves with even-odd and non-zero windings.
* Pixel-perfect AA quality.
* Supported file formats are PNG, BMP, JPG, SVG + more in development.
* Strokes with joins and caps.
* Shadows, glows and blurs.
* Complex masking: Subtract, Intersect, Exclude.
* Complex blends: Darken, Multiply, Color Dodge, Hue, Luminosity... etc.
* Many operations are SIMD accelerated.

## VMath

<img src="https://github.com/treeform/vmath/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/vmath/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/vmath)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/vmath)
![GitHub](https://img.shields.io/github/license/treeform/vmath)
![GitHub issues](https://img.shields.io/github/issues/treeform/vmath)

Your one stop shop for vector math routines for 2d and 3d graphics.

* Pure Nim with no dependencies.
* 2D & 3D matrix math
* Transform, Rotation and Scale Matrixes
* All (`vec3`, `ivec3`, `dvec3`, `uvec3`, `bvec3`, ...) GLSL types!
* Very similar to GLSL Shader Language with extra stuff.
* Extensively benchmarked.

## Boxy

<img src="https://github.com/treeform/boxy/blob/master/docs/banner.png">

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

## Windy

<img src="https://github.com/treeform/windy/blob/master/docs/banner.png">

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

## Chroma

<img src="https://github.com/treeform/chroma/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/chroma/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/chroma)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/chroma)
![GitHub](https://img.shields.io/github/license/treeform/chroma)
![GitHub issues](https://img.shields.io/github/issues/treeform/chroma)

## Chrono

<img src="https://github.com/treeform/chrono/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/chrono/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/chrono)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/chrono)
![GitHub](https://img.shields.io/github/license/treeform/chrono)
![GitHub issues](https://img.shields.io/github/issues/treeform/chrono)

## Bumpy

<img src="https://github.com/treeform/bumpy/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/bumpy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/bumpy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/bumpy)
![GitHub](https://img.shields.io/github/license/treeform/bumpy)
![GitHub issues](https://img.shields.io/github/issues/treeform/bumpy)

## Jsony

<img src="https://github.com/treeform/jsony/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/jsony/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/jsony)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/jsony)
![GitHub](https://img.shields.io/github/license/treeform/jsony)
![GitHub issues](https://img.shields.io/github/issues/treeform/jsony)

## Flatty

<img src="https://github.com/treeform/flatty/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/flatty/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/flatty)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/flatty)
![GitHub](https://img.shields.io/github/license/treeform/flatty)
![GitHub issues](https://img.shields.io/github/issues/treeform/flatty)

## Netty

<img src="https://github.com/treeform/netty/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/netty/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/netty)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/netty)
![GitHub](https://img.shields.io/github/license/treeform/netty)
![GitHub issues](https://img.shields.io/github/issues/treeform/netty)

## Bitty

<img src="https://github.com/treeform/bitty/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/bitty/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/bitty)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/bitty)
![GitHub](https://img.shields.io/github/license/treeform/bitty)
![GitHub issues](https://img.shields.io/github/issues/treeform/bitty)

## Taggy

<img src="https://github.com/treeform/taggy/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/taggy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/taggy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/taggy)
![GitHub](https://img.shields.io/github/license/treeform/taggy)
![GitHub issues](https://img.shields.io/github/issues/treeform/taggy)

## Tabby

<img src="https://github.com/treeform/tabby/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/tabby/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/tabby)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/tabby)
![GitHub](https://img.shields.io/github/license/treeform/tabby)
![GitHub issues](https://img.shields.io/github/issues/treeform/tabby)

## Ws

<img src="https://github.com/treeform/ws/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/ws/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/ws)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/ws)
![GitHub](https://img.shields.io/github/license/treeform/ws)
![GitHub issues](https://img.shields.io/github/issues/treeform/ws)

## Webby

<img src="https://github.com/treeform/webby/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/webby/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/webby)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/webby)
![GitHub](https://img.shields.io/github/license/treeform/webby)
![GitHub issues](https://img.shields.io/github/issues/treeform/webby)

## Print

<img src="https://github.com/treeform/print/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/print/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/print)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/print)
![GitHub](https://img.shields.io/github/license/treeform/print)
![GitHub issues](https://img.shields.io/github/issues/treeform/print)

## Shady

<img src="https://github.com/treeform/shady/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/shady/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/shady)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/shady)
![GitHub](https://img.shields.io/github/license/treeform/shady)
![GitHub issues](https://img.shields.io/github/issues/treeform/shady)

## Genny

<img src="https://github.com/treeform/genny/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/genny/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/genny)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/genny)
![GitHub](https://img.shields.io/github/license/treeform/genny)
![GitHub issues](https://img.shields.io/github/issues/treeform/genny)

## Benchy

<img src="https://github.com/treeform/benchy/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/benchy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/benchy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/benchy)
![GitHub](https://img.shields.io/github/license/treeform/benchy)
![GitHub issues](https://img.shields.io/github/issues/treeform/benchy)

## Slappy

<img src="https://github.com/treeform/slappy/blob/master/docs/banner.png">

![Github Actions](https://github.com/treeform/slappy/workflows/Github%20Actions/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/treeform/slappy)
![GitHub Repo stars](https://img.shields.io/github/stars/treeform/slappy)
![GitHub](https://img.shields.io/github/license/treeform/slappy)
![GitHub issues](https://img.shields.io/github/issues/treeform/slappy)
