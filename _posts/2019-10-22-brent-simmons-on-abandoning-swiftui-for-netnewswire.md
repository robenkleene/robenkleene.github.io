---
layout: link
title: "Brent Simmons on Abandoning SwiftUI for NetNewsWire"
categories: Development, macOS, iOS
---

Brent Simmons [on why they are switching from SwiftUI back to UIKit](https://inessential.com/2019/10/21/swiftui_is_still_the_future) for the [NetNewsWire](https://ranchero.com/netnewswire/) iOS app:

> We’ve been using SwiftUI in NetNewsWire for iOS, for its settings screen and related pieces (such as adding an account).

> But now we’re redoing that code in classic UIKit. [...]

> We very much want to use SwiftUI, and we believe it’s the future of Mac and iOS development — but emphasis should be on future, because it’s not quite ready in the present.

> Which should surprise nobody, given that it’s so new. But I thought it might be interesting to know exactly what issues we ran into when using it.

I'm bearish on [SwiftUI](https://developer.apple.com/xcode/swiftui/) because I think it's harder to replace things with something new than people think. The great transition in Apple's history, from [Mac OS 9](https://en.wikipedia.org/wiki/Mac_OS_9) to [Mac OS X](https://en.m.wikipedia.org/wiki/MacOS) was to an OS that was in many ways actually *even older*, [based on it's Unix underpinnings](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution). I don't see how you can scale up something from scratch to replace frameworks as massive as [AppKit](https://en.wikipedia.org/wiki/Application_Kit) and [UIKit](https://developer.apple.com/documentation/uikit), but we'll see.

