---
layout: link
title: "Web Development on an iPad"
categories: iPad, iOS, Web, Development
---

[Owen Williams](https://twitter.com/ow) on [setting up a web development environment on an iPad](https://medium.com/@ow/its-finally-possible-to-code-web-apps-on-an-ipad-pro-90ad9c1fb59a), based around the new "desktop-class" browser in iOS 13:

> As a part of iPadOS 13, Safari is growing up too: Apple says it’s now a ‘desktop-class’ browser, without really elaborating about what that means. Oh, and they added mouse support — seriously.

> Believe it or not, that change means you can build web apps using the iPad Pro, despite the lack of a real IDE or environment, and it’s actually not that bad.

His trick is running [Visual Studio Code](https://code.visualstudio.com/) on a server using [Coder](https://coder.com/):

> Visual Studio Code is running on a Google Cloud server, thanks to an open source project called Coder.

> This works because Visual Studio Code is web-based in the first place, and the Google Cloud component simply hosts the ‘app’ in the cloud, but caches its assets on your device.

> In other words, it’s blazing fast, and the only bit running elsewhere is the terminal and file sync. For those on LTE iPads, this is perfect — you’re always connected anyway, and now you’re backed by a powerful cloud server. Also, it’s goddamn magical to be able to code on a device like this, and I so dearly hope that Visual Studio Code will officially make it to the iPad in the near future.

This is one of those ideas that seems inevitable, but has never really taken off. Why not use a [thin client](https://en.wikipedia.org/wiki/Thin_client) with a big beefy server to do the heavy lifting? It's the same idea behind [Google Stadia](https://stadia.dev/).

The counterpoint is this has danger of falling into the same trap is ["the Year of Desktop Linux"](https://www.google.com/search?q=the+Year+of+Desktop+Linux), that something consistently getting better is not same thing as it actually becoming viable. For something new to take off it has to be *much* better than the existing way of doing things.

We can see this in action by looking at popularity of the collaborative interface design tool [Figma](https://www.figma.com/), which is replacing existing native desktop apps like [Sketch](https://www.sketch.com/) at many big companies, versus collaborative programming environments like [Glitch](https://glitch.com/) and [Repl.it](https://repl.it/), which while also popular, are used more for niche use cases and haven't gained much traction in replacing existing native desktop coding environments.

The difference is [version control](https://en.wikipedia.org/wiki/Version_control). The files that designer's work with, while increasingly are [plain text](https://developer.sketch.com/file-format/), they are still output by a visually editor instead of being edited by hand, like the plain text files programmers work with are. The process programmers use to resolve conflicts between source control files using a version control tool like `git` only work well for plain text files that have been edited by hand. Hence, the collaborative editing features in these tools become a revolutionary change in a visual design tool like Figma, where streamlined collaboration was effectively impossible before, but remain an evolutionary change in a programming tool like Glitch, where existing collaboration solutions already exist. Evolutionary advantages rarely ever take off, while revolutionary changes take off shockingly quickly.

