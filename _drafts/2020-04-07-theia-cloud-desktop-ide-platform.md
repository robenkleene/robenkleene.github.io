---
layout: link
title: "Theia: Cloud & Desktop IDE Platform"
categories: IDE, Visual-Studio-Code, Development
---

[Theia](https://theia-ide.org/) is a new IDE "designed from the ground [sic] to run on Desktop and Cloud" [released by](https://www.eclipse.org/org/press-release/20200331-theia.php) [The Eclipse Foundation](https://www.eclipse.org/):

> Eclipse Theia is an extensible platform to develop multi-language Cloud & Desktop IDEs with state-of-the-art web technologies.

The screenshots look just like [Visual Studio Code](https://code.visualstudio.com/), and it supports VS Code extensions:

> We believe VS Code is an excellent product. That is why Theia embraces many of the design decisions and even directly supports VS Code extensions.

As to the *distinctions from* VS Code, as previously mentioned it's designed to work as both a desktop and cloud IDE, there's some details of what this exactly this means in the [Architecture Overview](https://theia-ide.org/docs/architecture/):

> The frontend process represents the client and renders the UI. In the browser, it simply runs in the rendering loop, while in Electron it runs in an Electron Window, which basically is a browser with additional Electron and Node.js APIs. Therefore, any frontend code may assume browser as a platform but not Node.js.

I'm curious what benefits this entails in practice over using VS Code with the open-source [code-server](https://github.com/cdr/code-server).

Another major component is the [Open VSX Registry](https://open-vsx.org/), which is described in a [The DEV Community post](https://dev.to/svenefftinge/theia-1-0-finally-a-good-browser-ide-3ok0) as "an open-source implementation of a VS Code extension registry that we have developed under the umbrella of the Eclipse Foundation" with the rational being:

> Unfortunately, Microsoft prohibits non-Visual Studio products from installing any binaries downloaded from their marketplace (see [terms](https://cdn.vsassets.io/v/M146_20190123.39/_content/Microsoft-Visual-Studio-Marketplace-Terms-of-Use.pdf)).

