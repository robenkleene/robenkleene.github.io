---
layout: link
title: "On the Mere Suggestion That ARM Macs Might Only Run Sandboxed Apps"
categories: Professional, Creative, macOS, ARM
---

Gus Mueller has [my favorite take](https://shapeof.com/archives/2020/6/educated_guesses_about_a_mac_transition_to_arm.html) on [the news](https://www.bloomberg.com/news/articles/2020-06-09/apple-plans-to-announce-move-to-its-own-mac-chips-at-wwdc) that Apple plans to announce the transition to their own ARM chips at [WWDC](https://developer.apple.com/wwdc20/). Of the various predictions people are throwing around, the only one Mueller gives any credence to is the prospect that ARM Macs will only running sandboxed apps[^ridiculousfishisalsoworried]:

> **Assertion: ARM Macs will only allow sandboxed app.**

> This could happen. I give it a 50/50 shot at happening. Personally, I hope it doesn't happen as there are still many problems with the sandbox on MacOS that have yet to be resolved, even though developers have been complaining about it for years.

Personally, I do not think that this is going to happen. In my [overview of creative apps](https://blog.robenkleene.com/2019/08/07/apples-app-stores-have-failed-creative-apps/), I was stunned at how ineffectual sandboxed software has been. I keep a mental list of applications that aren't sandboxed that the Mac absolutely cannot afford to lose, here's the list[^moreonthenotsandboxedlist]:

- [Ableton Live](https://www.ableton.com/)
- [Adobe After Effects](https://www.adobe.com/products/aftereffects.html)
- [Adobe Lightroom Classic](https://www.adobe.com/products/photoshop-lightroom-classic.html)
- [Adobe Photoshop](https://www.adobe.com/products/photoshop.html)
- [Adobe Premiere](https://www.adobe.com/products/premiere.html)
- [Blender](https://www.blender.org/)[^blendermightstillbelost]
- [Cinema 4D](https://www.maxon.net/en-us/products/cinema-4d/overview/)
- [Sketch](https://www.sketch.com/)
- [Visual Studio Code](https://code.visualstudio.com/)

If the Mac were to lose everything on that list, then they lose the following groups:

- 3D Artists
- Designers
- Music Producers
- Motion Graphics Artists
- Photographers
- Video Editors

For creative professionals, essentially the only remaining users would be the tiny subset of developers, music producers, and video editors that work exclusively in [Xcode](https://developer.apple.com/xcode/), [Logic Pro](https://www.apple.com/logic-pro/), and [Final Cut Pro](https://www.apple.com/final-cut-pro/) respectively. A Mac cut down to just those users is a dead platform.

* * *

[^ridiculousfishisalsoworried]: Mysterious (former?) AppKit engineer (and [`fish`](https://fishshell.com/) shell maintainer) [ridiculous fish](http://ridiculousfish.com/) also [shares this worry](https://twitter.com/ridiculous_fish/status/1270510981739802625).

[^moreonthenotsandboxedlist]: This is a short list. There are *many* more applications I suspect should be on this list, but these are all applications that I'm familiar enough with both the application itself, and more importantly, the community around it, to know that people would rather move to another platform, then lose the application.

[^blendermightstillbelost]: We are in danger of losing one application from this list either way: Blender. As Mueller states:

	> **Assertion: OpenGL is going away on ARM for MacOS.**

	> Yea, this is totally happening. OpenGL and OpenCL have been deprecated for a while now in favor of Metal. Apple will use this opportunity to drop them.

	My understanding is that this means Blender would have to support [Metal](https://developer.apple.com/metal/) in order to run on new ARM Macs. I *think* there's enough intertia in the Blender community to support Metal, if the alternative is to lose the Mac as a platform, but I'll be worried about this until that actually happens.

