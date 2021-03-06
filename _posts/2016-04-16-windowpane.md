---
layout: post
title: "Windowpane: Window Management in JavaScript for OS X"
categories: OS-X, Personal, Project
---

<img src="/assets/2016-04-16-windowpane.gif" alt="Windowpane" height="495">

[Windowpane](https://github.com/robenkleene/windowpane) is a window manager for OS X written entirely in [JavaScript for Automation](https://developer.apple.com/library/mac/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/OSX10-10.html#//apple_ref/doc/uid/TP40014508-CH109-SW1). It's closely related to other programmable window managers like [Hammerspoon](https://github.com/Hammerspoon/hammerspoon), and especially [Mjolnir](https://github.com/sdegutis/mjolnir). In fact, Windowpane is mainly just a port of [some Lua scripts for Mjolnir](https://luarocks.org/modules/sdegutis/mjolnir.sd.grid) that position windows on a grid.

Why write[^use] Windowpane when there are already other perfectly reasonable solutions that do the same thing? The theory is that Mjolnir is three things:

1. A keyboard shortcut listener, that runs Lua scripts when certain keyboard shortcuts are entered.
2. Lua bindings for Cocoa's accessibility features that can control the sizes and positions of windows.
3. Lua scripts that calculate window sizes and positions on a grid.

The reason I wrote Windowpane is that there's so much software here that just does the same thing as other software I already have on my machine. Let me explain.

I've used Daniel Jalkut's excellent [FastScripts](https://red-sweater.com/fastscripts/) for years. FastScripts is a utility for running AppleScripts with keyboard shortcuts[^applescript], that's #1. Apple themselves provide bindings for Cocoa's accessibility features in at least two languages: AppleScript, and the new JavaScript for Automation. That just leaves #3, the Lua scripts themselves. Lua is closely related to JavaScript, so porting them was a no-brainer, hence Windowpane.

***

[^use]: Let alone use

[^applescript]:
	Programmers on OS X will still benefit from learning AppleScript. OS X is not customizable in the ways other operating systems are. Mac applications don't have complex configuration files, and core components (like a [window manager](https://en.wikipedia.org/wiki/Window_manager)) can't be swapped out for another implementation. But it excels at customization *through scripting*. "The Mac Way" is streamlined applications that eschew configuration for a solid implementation of the most common case.

	Gruber [likens this approach to open source software](http://daringfireball.net/2006/07/mr_jimmy), as an alternative way programmers can adapt software to their needs:

	> The question I’ve been pondering the last few weeks, though, is why I’m not as bothered by the [closed source] status quo as Bray. I can write a little code, and my brain is chockablock with niggling little complaints and feature requests regarding the software I use. But I feel no strong urge to see any of the closed source apps I use released as open source. Why?

	> The other day, while tinkering with a small project in Script Debugger, the answer hit me — I already do hack together tiny little additions and modifications to the software I use, with scripting. And for more serious extensions, many of the apps I depend on have plug-in APIs.

	Even beyond the benefit of designing features to one's own specifications,  it's also a just plain solid solution to a Really Hard Problem that still exists today: inter-application communication and data sharing. The implementation itself *is important*.

	My [AppleScripts repository](https://github.com/robenkleene/AppleScripts) has some great examples, be sure to explore the [Applications](https://github.com/robenkleene/AppleScripts/tree/master/Applications) folder.
