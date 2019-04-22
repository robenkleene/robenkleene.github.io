---
layout: link
title: "More on Siri Shortcuts Coming to the Mac"
categories: News, macOS, Automation
---

A couple of interesting posts taking in the news of [Siri Shortcuts coming to the Mac](), [Dr. Drang hopes that there's a way to go between shell scripting and Siri Shortcuts](https://leancrew.com/all-this/2019/04/whats-next/):

> The people who built Unix understood the value of passing information back and forth between processes, and they gave that ability not just to C programmers but also to regular users through pipes, redirection, and shell scripting. The NeXT developers who built the Mac’s current OS maintained that tradition and extended it from the command line to GUI apps by hooking into AppleScript and Apple Events with osascript and do shell script.

Jason Snell also seems [primarily concerned about interfacing with shell scripts](https://sixcolors.com/link/2019/04/shortcuts-coming-to-the-mac/):

> The ability to run scripts is really Automator’s killer feature.

And commenting on a general lack of clarity about Apple's automation strategy:

> Automation on the Mac is in danger of becoming a real mess. Automator and AppleScript haven’t changed much over time, and probably won’t ever be able to control Marzipan apps. Bringing over Shortcuts as the macOS automation tool of the future sounds good to me, but if it’s limited to Marzipan apps only, things get weird. The Mac would end up with two entirely different classes of apps, each with their own automation system, both walled off from the other.

Both Snell and Drang are primarily concerned how Siri Shortcuts will handle interfacing with shell scripts. This is telling because in Siri Shortcuts counterparts on the Mac, Automator, shell scripting seems like it was small feature in a complicated application. I get the impression Apple is disappointed with how Automator turned out, that not enough users take advantage of it---we can infer this from their [lack of investment](https://daringfireball.net/linked/2016/11/16/sal-soghoian) in the product---but I'm not exactly sure what Apple thinks is different about Siri Shortcuts[^notabledifference]? The only notable difference seems to be that Siri Shortcuts bases more of its implementation on URL schemes, which, [as I noted](/2019/04/21/siri-shortcuts-coming-to-the-mac/), some basic flaws.
