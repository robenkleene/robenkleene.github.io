---
layout: post
title: "Apple's App Stores Have Failed Creative Apps"
categories: Professional
---

The appeal of the Mac has always been that it's a great platform for making things. Software is the great equalizer: It's inexpensive, sometimes even free, and it lets you do things that used to only be possible with expensive, specialized hardware. Software is [Andy Warhol's Coke](https://kottke.org/10/10/andy-warhol-on-coca-cola) for creators.

Until the iPhone, Apple's priorities were aligned with creators. Most of their revenue came from selling Macs, and people often bought Macs because they're a great platform for running creative apps, like the [Adobe suite](https://www.adobe.com/creativecloud.html) and Apple's own [Logic Pro X](https://www.apple.com/logic-pro/) and [Final Cut Pro X](https://www.apple.com/final-cut-pro/).

But that all changed with the iPhone. Since the success of the iPhone, the majority of Apple's revenue now comes from iOS, a platform that's not often used to run creative apps. Whether intentionally or not, this has shifted Apple's strategy to one that no longer facilitates creative apps, on either of its platforms, iOS or macOS.

## Apple's Policies That Conflict With Creative Apps

The root of the problem is priorities, but the result is policies that impede creative apps. The most problematic policies are the following:

1. [**App Sandboxing**](https://developer.apple.com/app-sandboxing/): Sandboxing limits what apps can do in order to make them safer to run. There isn't any one specific sandboxing rule that limits creative apps, but sandboxing limits what apps can do and creative apps always try to be as powerful as possible, so those goals will always be in opposition.
2. [**App Store Review Guidelines**](https://developer.apple.com/app-store/review/guidelines/): [Rule 2.5.2](https://developer.apple.com/app-store/review/guidelines/#2.5.2) in particular limits extensibility. Extensibility is important for creative apps. For example, every industry-leading creative app supports some form of plugin.
3. [**Only Promoting App Store Apps**](https://mjtsai.com/blog/2011/03/28/app-store-design-awards/): Apple gives a marketing advantage to apps in the app stores by [promoting them](https://9to5mac.com/2011/03/28/this-years-apple-design-awards-is-only-for-apps-distributed-via-app-store-and-mac-app-store/) over apps that aren't. Since creative apps usually can't be in the Mac App Store, this shifts the marketing away from promoting the platform for being great for running creative apps. Without marketing support from Apple, it's especially difficult to get innovative creative apps off the ground by targeting the Mac, an approach that has historically [been successful](https://www.sketch.com/).

## The Industry-Leading Creative Apps

I've searched for all the market-share surveys about creative apps I could find online and summarized them below. Most of these are from websites polling their visitors. These surveys aren't perfect, and some of the numbers are out of date. But there's enough data here to draw some broad conclusions. Based on these surveys, here are the industry-leading creative apps by market share (I've also included percentages other apps that are interesting to look at in parenthesis):

1. [2015 Audio Editor](https://blog.robenkleene.com/2019/06/10/2015-digital-audio-workstation-market-share/): **23% Ableton Live** (17% Logic Pro X)
2. [2015 Motion Graphics Editor](https://blog.robenkleene.com/2019/05/30/2015-motion-graphics-software-market-share/): **96% Adobe After Effects** (9% Final Cut Pro)
3. [2013 Photo Editor](https://blog.robenkleene.com/2019/06/13/2013-photography-post-production-software-market-share/): **32% Adobe Lightroom**
6. [2019 Text Editor](https://blog.robenkleene.com/2019/04/10/2019-stackoverflow-developer-survey-results/): **51% Visual Studio Code**
7. [2018 User-Interface Designer](https://blog.robenkleene.com/2019/04/02/sketch-figmas-market-share/): **70% Sketch** (2% Affinity Designer)
8. [2014 Video Editor](https://blog.robenkleene.com/2019/04/05/video-editor-market-share-numbers-from-2014/): **63% Adobe Premiere Pro** (20% Final Cut Pro)

There are a few quick take-aways: Most of the market leaders run on both Windows and macOS, the only exception is Sketch which is macOS only. None of them run on Linux except Visual Studio Code. On macOS, none of them are sandboxed or in the Mac App Store[^lightroomintheappstore]. All of them support some form of plugin, which would be difficult to do with sandboxing and other app store restrictions. None of these surveys even mention iOS apps---iOS doesn't appear to have any relevance for creative apps at all, at least as measured by these surveys. This is an important point to drive home: Apple's most popular platform, and the platform many believe to be the future of the company, has seemingly no relevance for creative apps.

This gives a harsh picture of sandboxing for creative apps. If sandboxing has benefits to consumers, then creative apps and their users have summarily rejected them---despite the marketing advantage Apple gives to the few creative apps that actually are in the app stores.

Just how complete is this rejection? It's even clearer when you look at where sandboxed apps actually do appear in these surveys. For the most part they don't, in other words, the percentage of users using sandboxed creative apps is too small to even show up in these surveys. But one sandboxed application does appear in these results: [Affinity Designer](https://affinity.serif.com/en-us/) comes in at %2 for user-interface design in [Uxtools.com's poll](https://uxtools.co/survey-2018#ui-design). It's worth noting that Affinity Designer is about 1/20th[^affinitydesignerpricecalculation] the cost of its most similar competitor, Adobe Illustrator, which is about nine times as popular in the same poll. Even sandboxed applications competing with Adobe's [widely disliked](https://www.change.org/p/adobe-systems-incorporated-eliminate-the-mandatory-creative-cloud-subscription-model) subscription model have difficulty gaining significant market share.

## Apple's Developer Technologies

While sandboxing makes a dismal appearance on this list, Apple's developer technologies, like [AppKit](https://developer.apple.com/documentation/appkit?language=objc), fair well on these surveys. Apple has a crown-jewel level application in Sketch, the only market leader that's a macOS exclusive, and one that's built top-to-bottom on Apple technologies[^sketchbuiltonappletechnologies].

Apple's own apps also fair well in these surveys, both Logic Pro X and Final Cut Pro make respectable showings. But those apps don't prove much for third party developers. [Apple's revenue from these apps](https://blog.robenkleene.com/2019/07/06/2018-apples-declining-revenue-from-pro-apps/) is a drop in the bucket compared to their other products. Apple could support these products indefinitely, even if it didn't make business sense to do so. Further more, Apple's own creative apps can be in the Mac App Store despite not being sandboxed, and they're of course heavily marketed by Apple.

Sketch is the best proof that Apple's platform and frameworks can support a *viable business* selling creative apps. This seems to indicate that Apple could have more platform-exclusive, competitive creative apps if they just adjusted their policies to facilitate it[^sketchstartedbeforesandboxing].

## The Future

The Mac App Store was introduced in 2010, as we approach a decade of these technologies being available, it's time to re-evaluate the model. App stores in general have many important benefits: They make it safer to try out new apps at a level that wouldn't be possible otherwise. But enough time has passed to realize that the model just doesn't work for creative apps. For comparison, it was five years from [Adobe InDesign's](https://www.adobe.com/products/indesign.html) release in 1999 to [taking over the publishing industry](https://arstechnica.com/information-technology/2014/01/quarkxpress-the-demise-of-a-design-desk-darling/) by 2004.

Fundamentally, there isn't a conflict here. Apple's goals for privacy and health, and the success of the iPhone, do not have to interfere with the Mac being a great platform to run creative apps. There are a couple of obvious things Apple could do to improve the situation: Improving sandboxing, and marketing applications that aren't in the Mac App Store are obvious candidates. But really what I'd like to see is a shift in values. Apple has been trying to force apps to conform to sandboxing and app store rules by not allowing those apps in the Mac App Store unless they do so. But a decade out, it's time to realize that's not working for every type of app, and the apps it isn't working for are arguably the most important on the platform. The real plea here is for Apple's vision for their platforms to again be compatible with creative apps.

Apple was once a company whose image was synonymous with creative professionals. Apple doesn't have to stop selling so many iPhones in order to be that company again, they just have to want to.

* * *

[^lightroomintheappstore]: Lightroom has a [new version](https://www.adobe.com/products/photoshop-lightroom.html), that's sandboxed and in both the iOS and Mac app stores, but that's a separate version from the one that appears in the survey, [Lightroom Classic](https://www.adobe.com/products/photoshop-lightroom-classic.html), which isn't sandboxed or in the Mac App Store.

[^affinitydesignerpricecalculation]: Adobe's Creative Cloud "Single App" [plan](https://www.adobe.com/creativecloud/plans.html) is $21 per month, Affinity Designer is a one-time cost of $50. I assumed a three year update cycle for Designer in my price comparison.

[^sketchbuiltonappletechnologies]: Not only is Sketch built using [AppKit](https://developer.apple.com/documentation/appkit?language=objc), it also uses [Core Graphics](https://developer.apple.com/documentation/coregraphics?language=objc) for its graphics engine. The Adobe and Affinity's apps both have custom engines written in C++.

[^sketchstartedbeforesandboxing]: Notably, Sketch was launched in 2010, and was in the Mac App Store before sandboxing was introduced in 2011. It was removed from the store in 2015, as far as I know it was never sandboxed.
