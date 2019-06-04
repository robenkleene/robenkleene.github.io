---
layout: post
title: "The Reaper"
categories: Development, iOS, macOS
---

Brent Simmons responds to Steve Troughton-Smith's ["(Don't Fear) The Reaper"](https://www.highcaffeinecontent.com/blog/20190522-(Dont-Fear)-The-Reaper) with ["Still Fearing the Reaper"](https://inessential.com/2019/05/22/still_fearing_the_reaper):

> So, knowing how this has worked out in the past, why do I fear the reaper?

> Because bringing UIKit brings no new power. If anything, it subtracts power. UIKit apps — at least so far — are all sandboxed and available only via the App Store. They don’t offer everything AppKit offers.

In the piece Brent is responding to, Steve compares bringing UIKit to the Mac (via Marzipan) to the transition from [Classic Mac OS](https://en.wikipedia.org/wiki/Classic_Mac_OS) to [OS X](https://en.wikipedia.org/wiki/Mac_OS_X_10.0) (via [NeXTSTEP](https://en.wikipedia.org/wiki/NeXTSTEP)); a transition that proved to be enormously successful. But I don't buy this comparison. [Cocoa](https://en.wikipedia.org/wiki/Cocoa_(API)), with its emphasis on [model-view-controller](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller), [object-oriented programming](https://en.wikipedia.org/wiki/Object-oriented_programming), and [framework](https://en.wikipedia.org/wiki/Software_framework)-driven development, was a fundamentally different approach to software development than the [Macintosh Toolbox](https://en.wikipedia.org/wiki/Macintosh_Toolbox)---one with advantages that are easily summarized, for example the [Cocoa Wikipedia page](https://en.wikipedia.org/wiki/Cocoa_(API)) states:

> In providing framework support for all three MVC domains, Apple's goal is to reduce the amount of boilerplate or "glue" code that developers have to write, freeing up resources to spend time on application-specific features.

Developers [got more functionality for free](https://www.youtube.com/watch?v=QhhFQ-3w5tE&feature=youtu.be&t=612) when they used Cocoa (while also losing some control). Here's how Gwynne Raskind, writing for Mike Ash's NSBlog, [describes working with the menu bar with the Macintosh Toolbox](https://mikeash.com/pyblog/the-mac-toolbox-followup.html):

> Menu commands are passed around in their raw form as 32-bit integers encoding the menu's resource ID in the high 16 bits and the item number in the low 16 bits. To figure out what to do, one extracts these two words and branches based on them. Yes, this means your code is intimately and directly tied to the exact layout of items in your menu resources. You remembered to make a constant for every menu ID and item number, right? No? Wow, are you in for a fun time.

The advantages of Cocoa are easy to explain. Unlike the advantages of UIKit relative to AppKit. The main argument[^cocoaarguments] I've heard is that UIKit is built around [Core Animation](https://en.wikipedia.org/wiki/Core_Animation), whereas similar functionality had to be retroactively added to AppKit. But animation is more important in UIKit. Gesture-driven interfaces couple well touch with [direct manipulation](https://en.wikipedia.org/wiki/Direct_manipulation_interface); many interactions that work great animated on iOS (like swiping right to go back) don't work as well on macOS, and are more naturally replaced with mouse clicks and keyboard shortcuts that result in instant transitions.

The real motivation for UIKit on the Mac is that more developers know it, and therefore more code is being written for it. This is the same argument for [Electron](https://electronjs.org/) and [React Native](https://en.wikipedia.org/wiki/React_Native): "We know how great apps are made, but we're going to use this other thing instead because our developers already know it" ("We'll make up the difference in volume!"). Has that approach ever resulted in great apps? You make great apps by *making that your priority*, not developer familiarity.

* * *

[^cocoaarguments]: The other arguments I've heard are that the [coordinate system is inverted between iOS and AppKit](https://developer.apple.com/library/archive/documentation/General/Conceptual/Devpedia-CocoaApp/CoordinateSystem.html), and that the two frameworks have [a bunch of classes that are similar between the two](https://inessential.com/2015/02/05/uxkit_skepticism).

