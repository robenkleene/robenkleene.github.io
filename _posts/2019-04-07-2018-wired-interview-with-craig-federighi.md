---
layout: link
title: "Wired Interview With Craig Federighi, 2018"
categories: macOS, Old
---

In light of the news about Apple's new services from the [March event](https://www.apple.com/apple-events/march-2019/), and [other details](https://twitter.com/stroughtonsmith/status/1114261872029700098) that have come to light, it's good to go back and review some of Craig Federighi's statements in this [exclusive Wired interview](https://www.wired.com/story/wwdc-2018-federighi-ios-apps-on-macos/):

> Even though the apps are effectively being shared between operating systems, Federighi emphasized that your Mac won't start behaving like an iPhone. "It's still MacOS, you still have the Terminal, you can still attach four monitors to it, you can still hook up external drives," he said.

I'm including this because he specifically mentions the terminal. The terminal is the last-stand battleground for how closed the Mac can get, because a useful terminal has to be able to download and install unsigned binaries. So a macOS with a terminal can never be as closed as iOS is now.

Since the terminal is an integral part of software development, it should be safe for the time being. The two current battlegrounds for the open Mac are the tightening from both ends between [app sandboxing](https://developer.apple.com/library/archive/documentation/Security/Conceptual/AppSandboxDesignGuide/AboutAppSandbox/AboutAppSandbox.html), and [Mojave's new security and privacy protections](https://mjtsai.com/blog/2018/09/10/mojaves-new-security-and-privacy-protections-face-usability-challenges/). The former provides special privileges to apps that agree to restrict what they can do, the latter restricting what *all* apps can do, regardless whether they are sandboxed.
