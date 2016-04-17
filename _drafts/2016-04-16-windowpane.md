---
layout: post
title: "Windowpane: Window Management in JavaScript for OS X"
categories: OS-X
---

<img src="/assets/2016-04-16-windowpane.gif" alt="Windowpane" height="495">

[Windowpane](https://github.com/robenkleene/windowpane) is a window manager for OS X written entirely in
[JavaScript for Automation](https://developer.apple.com/library/mac/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/OSX10-10.html#//apple_ref/doc/uid/TP40014508-CH109-SW1). It's closely related to other programmable window managers like [Hammerspoon](https://github.com/Hammerspoon/hammerspoon), and especially [Mjolnir](https://github.com/sdegutis/mjolnir). In fact, Windowpane is mainly just a port of some [Lua scripts](https://luarocks.org/modules/sdegutis/mjolnir.sd.grid) for Mjolnir for positioning windows in a grid. So why write[^use] Windowpane when there's already these perfectly reasonable solutions that do the same thing?

The theory is that Mjolnir is three things:

1. A keyboard shortcut listener, running Lua scripts when certain key combinations are pressed.
2. Lua bindings for Cocoa's accessibility features that can control the sizes and positions of windows.
3. Lua scripts that calculate window sizes and positions on a grid.

The deeper reason I wrote Windowpane is this was so much *software* that I already had *other software* on my computer to solve. Let me explain.

I've used Daniel Jalkut's excellent [FastScripts](https://red-sweater.com/fastscripts/) for years. FastScripts is a utility for running AppleScripts from keyboard shortcuts[^applescript]. That's #1. Apple themselves already provides bindings for Cocoa's accessibility features in two languages: AppleScript, and the new JavaScript for Automation. That just left #3, the Lua scripts themselves. Lua is closely related to JavaScript, so porting them over was a no-brainer, hence Windowpane.

***

[^use]: Let alone use

[^applescript]:
	Programmers using OS X should learn AppleScript. OS X is not customizable how other operation systems are. Mac applications don't have complex configuration files, and core components (like a [window manager](https://en.wikipedia.org/wiki/Window_manager) can't be swapped with another altenative implementation). But where it excels at being customized is through *scripting*. "The Mac Way" is streamlined applications that eschew configuration for a solid implementation of the common case. Then, for advanced users, provide an AppleScript interface to configure more complex or rare features.

	Gruber [likens this to open source software](http://daringfireball.net/2006/07/mr_jimmy), an alternative way programmers can adapt the software to their needs:

	> The question I’ve been pondering the last few weeks, though, is why I’m not as bothered by the [closed source] status quo as Bray. I can write a little code, and my brain is chockablock with niggling little complaints and feature requests regarding the software I use. But I feel no strong urge to see any of the closed source apps I use released as open source. Why?

	> The other day, while tinkering with a small project in Script Debugger, the answer hit me — I already do hack together tiny little additions and modifications to the software I use, with scripting. And for more serious extensions, many of the apps I depend on have plug-in APIs.

	Even beyond the benefits of design features to ones own specifications, it's also just plain one of the most widely used solutions to an important problem that continues to exit today: inter-application communication and data sharing. It successfully solves a Really Hard Problem; the implementation itself is *important*, both for it's strengths and weaknesses. My
	[AppleScripts repository](https://github.com/robenkleene/AppleScripts) has some great examples, be sure to explore the `Applications` folder.
