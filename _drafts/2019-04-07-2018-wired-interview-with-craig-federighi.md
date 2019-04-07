---
layout: link
title: "2018 Wired Interview With Craig Federighi"
categories: macOS
---

In light of the news about Apple's new services from the [March event](https://www.apple.com/apple-events/march-2019/), and [other details](https://twitter.com/stroughtonsmith/status/1114261872029700098) that have come to light, it's good to go back and review some of the statements in this [exclusive Wired interview with Craig Federighi](https://www.wired.com/story/wwdc-2018-federighi-ios-apps-on-macos/):

> Even though the apps are effectively being shared between operating systems, Federighi emphasized that your Mac won't start behaving like an iPhone. "It's still MacOS, you still have the Terminal, you can still attach four monitors to it, you can still hook up external drives," he said.

Frankly I'm just including this because he specifically mentions the terminal. The terminal is the the last-stand battleground for how closed the Mac can get, because a useful terminal has to be able to download and install unsigned binaries. So a macOS with a terminal can never be as closed as iOS is now.

Since the terminal is integral to software development, I think it's probably safe for the time being. This means the two current battlegrounds for the open Mac are the tightening from both ends between [app sandboxing](https://developer.apple.com/library/archive/documentation/Security/Conceptual/AppSandboxDesignGuide/AboutAppSandbox/AboutAppSandbox.html), and [Mojave's new security and privacy protections](https://mjtsai.com/blog/2018/09/10/mojaves-new-security-and-privacy-protections-face-usability-challenges/). The former providing special privileges to apps that agree to restrict what they can do, the latter restricting what *all* apps can do, regardless if they are sandboxed.
