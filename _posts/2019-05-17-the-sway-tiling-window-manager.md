---
layout: link
title: "The Sway Tiling Window Manager"
categories: Linux, User-Interface
---

[Sway's homepage](https://swaywm.org/) includes a fantastic, short video demonstration. Sway is a [Wayland compositor](https://en.wikipedia.org/wiki/Wayland_(display_server_protocol)); Wayland is a protocol designed to replace [X11](https://en.wikipedia.org/wiki/X_Window_System) on Linux. Sway itself is modeled after [i3](https://i3wm.org/), a popular X11 [tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager). Sway is unlikely to ever run on macOS, but the video is worth watching as an illustration of a tiling window manager's important features. Here's a list of features missing from Apple's tiling window manager implementation, Split View, for [macOS](https://support.apple.com/en-us/HT204948) and [iOS](https://support.apple.com/en-us/HT207582):

- Any number of tiled windows cam be created, instead of just two side-by-side windows.
- The positions of tiled windows can be swapped.
- All actions can be performed using keyboard shortcuts.
- Windows can be divided horizontally or vertically, instead of just vertically.
- Regular [stacking windows](https://en.wikipedia.org/wiki/Stacking_window_manager) can be created in front of the tiled windows.

The last item, about being able to create stacking windows in front of the tiled windows, strikes me as something that would make Split View on macOS much more powerful. Normally windows can be organized either as separate tabs, or as separate windows. In Split View, windows can only be organized as separate tabs, so an entire organizational vector has been loss. It would be great to be able to use Split View without having to give up so much power.
