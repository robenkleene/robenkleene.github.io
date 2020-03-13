---
layout: post
title: "Mac in Limbo"
categories: Professional, macOS, Web
---

[Alex Russell](https://twitter.com/slightlylate), a software engineer on the Google Chrome team, has a devastating presentation about [how little people are using the mobile web](https://vimeo.com/364402896). What struck me while I was watching was that, while Russell gives some optimistic suggestions for increasing the mobile web's relevance, it's clear that this battle is already over and the mobile web lost. The web simply isn't an important platform for most of the world on mobile, and it's especially unusable for anyone who doesn't own a high-end phone.

Russell provides some stats to support this, including [these 2014 numbers from Flurry](https://www.flurry.com/blog/post/115191864580/apps-solidify-leadership-six-years-into-the-mobile) showing that only 14% of time on mobile is spent on the web, while the other 86% of time is spent in apps. He calls out 10% as a meaningful threshold, that if a platform ever drops below that number, it doesn't get the investment it needs in terms of tooling and libraries; you enter what he calls a "doom loop". According to Russell, Google has internal metrics that show mobile web usage has now dropped below 7%[^mostrecentflurry].

Russell talks about the reasons this it the case, the argument boils down to two issues. The first is performance, you just can't get around the fact that native apps are more performant, and requires less bandwidth. The other is that Apple leverages their control over iOS to deemphasize the web, Russell cites two App Store Review Guidelines in particular:

- [**2.5.6**](https://developer.apple.com/app-store/review/guidelines/#2.5.6): Apps that browse the web must use the appropriate WebKit framework and WebKit Javascript.

This is the rule that blocks third-party rendering engines like Firefox's [Gecko](https://en.wikipedia.org/wiki/Gecko_(software)) and Google Chrome's [Blink](https://en.wikipedia.org/wiki/Blink_(browser_engine)).

The second piece that Russell references is the introduction to section [**4.2 Minimum Functionality**](https://developer.apple.com/app-store/review/guidelines/#4.2), which starts out by saying "Your app should include features, content, and UI that elevate it beyond a repackaged website." In other words, Apple just comes out and says that just a website isn't good enough for the App Store.

The losing battle for the mobile web brought about some personal reflection, because I'm also fighting a battle that's already been lost: The battle for a macOS desktop of [Cocoa](https://en.wikipedia.org/wiki/Cocoa_(API))[^cocoaorappkit] apps. From 2001–2010, it felt like we were headed in that direction. Mac exclusive utilities and productivity software  took off right away from the release of [OS X](https://en.wikipedia.org/wiki/MacOS#OS_X), with companies like [Panic](https://panic.com/) and [The Omni Group](https://www.omnigroup.com/) leading the charge, and [TextMate](https://macromates.com/) and [Apple's iWork](https://www.apple.com/iwork/) being important milestones along the way. Then, in the latter part of the decade, the real holy grails began to emerge: The groundwork Apple had been laying for visual tools at the framework level started to bear fruit first with [Acorn](https://flyingmeat.com/acorn/) and [Pixelmator](https://www.pixelmator.com/mac/), both released in 2007 and built on [Core Image](https://developer.apple.com/documentation/coreimage), and [Sketch](https://www.sketch.com/) released in 2010 and built on [Core Graphics](https://developer.apple.com/documentation/coregraphics). The vision of an entire desktop of ["Mac-like"](https://daringfireball.net/2018/12/electron_and_the_decline_of_native_apps) apps seemed within reach, finally offering an alternative that doesn't include cross-platform behemoths like [Adobe's Creative Suite](https://www.adobe.com/creativecloud.html) and [Microsoft Office](https://www.office.com/).

That all changed in 2011. [Apple announced that sandboxing in the Mac App Store  would be mandatory](https://developer.apple.com/news/index.php?id=11022011a). Sandboxing has had a devastating impact on Cocoa professional creative apps. In all the market share surveys of the tools used by creative professionals that I've been able to find, only one sandboxed app even shows up: [Affinity Designer](https://affinity.serif.com/en-gb/designer/). I wrote about it in [my overview of the tools used by creative professionals](https://blog.robenkleene.com/2019/08/07/apples-app-stores-have-failed-creative-apps/):

> Affinity Designer comes in at %2 for user-interface design in Uxtools.com’s poll. It’s worth noting that Affinity Designer is about 1/20th the cost of its most similar competitor, Adobe Illustrator, which is also about nine times as popular in the same poll. Even sandboxed applications competing with Adobe’s widely disliked subscription model have difficulty gaining significant market share.

With a single gesture, Apple assured that a desktop of all Cocoa apps would never be a reality, at least not for users of professional creative apps. The creative apps that abide by Apple's sandboxing rules have been marginalized, unable to compete with the more popular and powerful apps outside of the sandbox.

Apps can still use Cocoa without being sandboxed, by choosing not be in the Mac App Store, but by doing so they lose access to Apple's marketing clout[^appleonlymarketsmacappstoreapps], which removes one of the factors that helped apps like Pixelmator and Sketch get off the ground in the first place. Both benefited from heavy promotion by Apple early on. All of these factors change the tradeoffs of using Cocoa, and there's little upside at this point.

This isn't just about sandboxing and the Mac App Store, the frameworks Apple releases today for developers to build on, like [ARKit](https://developer.apple.com/augmented-reality/) and [Core ML](https://developer.apple.com/documentation/coreml), also just aren't as useful for Mac apps as the pre-2010 frameworks like Core Graphics and Core Image were. ARKit is obviously intended to make apps for iOS, due to its camera and form factor requirements. While Core ML does have some desktop uses, it's still more useful for iOS because it's harder to accomplish things manually on that platform[^coremlisforios].

Finally, Apple's own fleet of pro apps has been paired down to just:

- **Final Cut Pro X** (Acquired in 1999)
- **Logic Pro X** (Acquired in 2002)
- **Motion** (first released in 2003)

While the following have been shuttered:

- **[Aperture](https://en.wikipedia.org/wiki/Aperture_(software))** (first released in 2005, discontinued 2014)
- **[Shake](https://en.wikipedia.org/wiki/Shake_(software))** (acquired in 2002, discontinued in 2009)
-  **Soundtrack Pro** (first released as part of Finale Cut Pro in 2003, discontinued in 2011)

The last time Apple introduced a new pro app was in 2004, and the last time they acquired a new pro app was in 2002, a strategy that had worked well for Apple in the past, resulting in both of their pro crown jewels, Final Cut and Logic. Aperture, Shake, and Soundtrack Pro were all canceled, ceding their market share back to the cross-platform behemoths. In addition, Final Cut Pro X has [gone the prosumer route](https://www.macworld.com/article/3250207/final-cut-pro-x-review.html). While this isn't necessarily a bad thing, it is more evidence of a pattern of Apple not supporting their pro users. Here's [Adam Lisagor](https://twitter.com/adamlisagor) of [Sandwich](https://sandwich.co/) [comparing the release of the release of Final Cut Pro X to previous versions](https://lonelysandwich.com/post/7033868135/fcp-the-new-class):

> When Apple pushed FCP to the industry pros five or six years ago, they did some hardcore outreach. They brought out Walter Murch, for God’s sake. The man cut Cold Mountain on it for God’s sake. They evangelized by showing what had been done, not by what could be done. But this time out, there is no evangelizing. No Murch. They do a dog and pony with vapid car footage or a Pixar trailer or something. This is meaningless to industry pros who need to know one thing, and it’s a very simple thing: can I edit a _____ on it? You know what I want to know? Can Louie CK edit his show on FCP X? Would he? Would he be happy to do it? Would he speak to a crowd of people about the experience? Would he plan on the product getting better? At what point does Apple ever even hint at admitting that they’ve released a product that will improve with age? Do they owe it (or anything) to their pro user base to acknowledge even a transition period? I want to be emailed a questionnaire and I want my Apple rep to write to me and invite me to a seminar called “Let’s cut a commercial”.

> You know how many licenses of FCP Murch and Cold Mountain sold? Millions. Know how many licenses the most beautifully-crafted, tastefully-shot home movie of your family trip to Lake Havasu will sell? @#$%& all. Nobody wants to make the best home movie ever. It’s just not an aspirational thing anymore, the way it was in the early days of hub computing, when the Mac was aspirationally this centered hub of creation. We don’t want to do that anymore, our eyes are bigger. We all want to think we can make The Social Network now. So show me Fincher cutting The Social Network on FCP X and you’ll have me on board.

Across the board Apple's support for creative apps is fading, whether it's their own creative apps, new frameworks for pro apps, or supporting third-party apps investing in their platform. The dream of a desktop of consistent Cocoa apps is farther away than ever.

* * *

[^mostrecentflurry]: Russell doesn't reference them, but the [most recent Flurry statistics I found](https://www.flurry.com/post/157921590345/us-consumers-time-spent-on-mobile-crosses-5) are from 2016 and have the mobile web at 8%.

[^desktopwebvsapps]: I'd love to see the stats comparing desktop web usage to desktop apps, but I haven't been able to find it.

[^cocoaorappkit]: I'm using the term "Cocoa", instead of the more precise "AppKit", or the more understandable "Mac-like", for historical reasons. If you followed Mac software during the 2000s, then you heard a lot of discussion about Cocoa and its  benefits, in particular in contrast to [Carbon](https://en.wikipedia.org/wiki/Carbon_%28API%29). A Cocoa Mac app connotes a certain set of characteristics: sharing UI components with the rest of the OS (with consistent text editing in particular), support for system-wide features like [Services](https://developer.apple.com/design/human-interface-guidelines/macos/extensions/services/), a [customizable the toolbar](https://support.apple.com/guide/mac-help/customize-toolbars-mchlb294260e/mac), and, if you're really lucky, [AppleScript](https://en.wikipedia.org/wiki/AppleScript) support. 

[^appleonlymarketsmacappstoreapps]: Apple appears to market two types of Mac apps: Mac App Store apps, and apps that aren't in the store, but are important enough to move Macs. For example, their [macOS page](https://www.apple.com/macos/catalina/) currently lists [Adobe Illustrator](https://www.adobe.com/products/illustrator.html), [Cinema 4D](https://www.maxon.net/en-us/), [Maya](https://www.autodesk.com/products/maya/overview), and [Zbrush](http://pixologic.com/). What Apple seems to never do is market new apps that aren't in the Mac App Store, which are exactly the most important apps for the future of the Mac as a platform.

[^coremlisforios]: To illustrate how Core ML is more useful for iOS apps than macOS apps, consider the most natural way you'd edit photos on each platform: On the Mac, you'd use a complex app like [Adobe Photoshop](https://www.adobe.com/products/photoshop.html) or [Adobe Lightroom](https://www.adobe.com/products/photoshop-lightroom.html) to edit photos entirely manually, whereas on iOS, it's more common to just select from a few preset options that edit your photo automatically. This whole approach of letting the machine make the decisions for you, leveraging tools like [machine learning](https://en.wikipedia.org/wiki/Machine_learning), stems from input being more limited on iOS and iPadOS.

