---
layout: link
title: "Jonathan Blow's 'Preventing the Collapse of Civilization'"
categories: macOS
---

Jonathan Blow, creator of [The Witness](https://en.wikipedia.org/wiki/The_Witness_(2016_video_game)) and [Braid](https://en.wikipedia.org/wiki/Braid_(video_game)), has [a great presentation](https://www.youtube.com/watch?v=pW-SOdj4Kkk) on the challenges facing the software development industry, in particular highlighting the problem of knowledge not being transferred down to the next generation.

The problem of knowledge transferring to the next generation is central to the situation with macOS today. Apple appears intent on replacing the underlying technologies that make up macOS, shifting to a new stack that's more palatable to contemporary developers. [Swift](https://en.wikipedia.org/wiki/Swift_(programming_language)) is a safer programming language with the characteristics of a scripting language, [SwiftUI](https://developer.apple.com/xcode/swiftui/) is a declarative DSL to describe UI, like HTML, and [Combine](https://developer.apple.com/documentation/combine) is a [reactive programming](https://en.m.wikipedia.org/wiki/Reactive_programming) framework for managing data flow.

The problem with these technologies, for an operating systems company, is that all the major operating systems---macOS, Windows, and Linux---are written in languages that extend [C](https://en.wikipedia.org/wiki/C_(programming_language)) (e.g., [Objective-C](https://en.wikipedia.org/wiki/Objective-C), [C++](https://en.wikipedia.org/wiki/C%2B%2B), and [C#](https://en.wikipedia.org/wiki/C_Sharp_(programming_language))). That doesn't mean you can't write a good operating system using these new technologies, but it does mean that it *hasn't been proven yet*. It seems dangerous for a operating systems company to take a hard turn away from C towards technologies unproven for operating systems.
