---
layout: linkpost
title: "Web Development on iPad"
categories: iPad, iOS, Web, Development
---

[Owen Williams](https://twitter.com/ow) on [setting up a web development environment on iPad](https://medium.com/@ow/its-finally-possible-to-code-web-apps-on-an-ipad-pro-90ad9c1fb59a), based around the new "desktop-class" browser in [iPadOS](https://www.apple.com/ipados/):

> As a part of iPadOS 13, Safari is growing up too: Apple says it’s now a ‘desktop-class’ browser, without really elaborating about what that means. Oh, and they added mouse support — seriously.

> Believe it or not, that change means you can build web apps using the iPad Pro, despite the lack of a real IDE or environment, and it’s actually not that bad.

His trick is running [Visual Studio Code](https://code.visualstudio.com/) on a server using [Coder](https://coder.com/):

> Visual Studio Code is running on a Google Cloud server, thanks to an open source project called Coder.

> This works because Visual Studio Code is web-based in the first place, and the Google Cloud component simply hosts the ‘app’ in the cloud, but caches its assets on your device.

> In other words, it’s blazing fast, and the only bit running elsewhere is the terminal and file sync. For those on LTE iPads, this is perfect — you’re always connected anyway, and now you’re backed by a powerful cloud server. Also, it’s goddamn magical to be able to code on a device like this, and I so dearly hope that Visual Studio Code will officially make it to the iPad in the near future.

A remote development environment like this is one of those ideas that seems inevitable but has never really taken off. Why not use a [thin client](https://en.wikipedia.org/wiki/Thin_client) with a beefy server to do the heavy lifting? It's the same idea behind [Google Stadia](https://stadia.dev/).

The counterpoint to this the same trap ["the Year of Desktop Linux"](https://www.google.com/search?q=the+Year+of+Desktop+Linux) falls into: That something steadily getting better is not same thing as it actually becoming viable. For something new to take off it has to be *much* better than the existing solutions.

We can see this in action by looking at the success of the collaborative interface design tool [Figma](https://www.figma.com/), which, [at some big companies](https://www.figma.com/customers/), is replacing existing native desktop apps like [Sketch](https://www.sketch.com/), and comparing that to how collaborative development environments like [Glitch](https://glitch.com/) and [Repl.it](https://repl.it/) are doing. While the latter are popular, they're used more for niche use cases and haven't gained much traction in replacing existing native desktop development environments.

The big difference here is [version control](https://en.wikipedia.org/wiki/Version_control). The files that designers work with are created by a visual design tool[^visualeditorfileformat], whereas the source code files that programmers work with are plain text files that are edited by hand. The tools programmers use to resolve changes between collaborators, like `git`, only work well for plain text files edited by hand. Hence the collaborative editing features in a visual design tool like Figma are revolutionary, whereas in a development environment like Glitch, where there are already existing collaboration solutions, they're only evolutionary. Evolutionary advantages rarely take off, while revolutionary ones take off at a shocking rate.
* * *

[^visualeditorfileformat]: Design tools are increasingly are [using plain text file formats](https://developer.sketch.com/file-format/).
