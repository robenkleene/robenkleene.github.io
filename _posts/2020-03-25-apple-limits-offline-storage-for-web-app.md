---
layout: link
title: "Apple Limits Offline Storage for Web App"
categories: News, Web, iPadOS
---

[On the WebKit blog](https://webkit.org/blog/10218/full-third-party-cookie-blocking-and-more/), Apple announces they're putting a "7-Day Cap on All Script-Writeable Storage" for privacy reasons:

> Back in February 2019, we announced that ITP would cap the expiry of client-side cookies to seven days. That change curbed third-party scripts’ use of first-party cookies for the purposes of cross-site tracking.

> However, as many anticipated, third-party scripts moved to other means of first-party storage such as LocalStorage. If you have a look at what’s stored in the first-party space on many websites today, it’s littered with data keyed as various forms of “tracker brand user ID.” To make matters worse, APIs like LocalStorage have no expiry function at all, i.e. websites cannot even ask browsers to put a limit on how long such storage should stay around.

In iPadOS 13.4 and Safari 13.1, all forms of offline storage for web apps will be purged after seven days. When I wrote about [how iPadOS's new mouse support will benefit web apps](https://blog.robenkleene.com/2020/03/20/ipadoss-new-mouse-support-will-benefit-web-apps/), there's an additional observation that I neglected to mention: There are only two ways apps can target that iPad, either as a native app available through the App Store, or as a web app accessed through a browser. Since [App Store rule 2.5.6](https://developer.apple.com/app-store/review/guidelines/#2.5.6) prevents browsers from using third-party rendering engines on iOS, this effectively means Apple has complete control over all methods of software distribution on iOS. And, since native apps are more of a differentiating feature for iPadOS than web apps, as the coming iPadOS mouse support starts to make desktop-class web apps usable on the iPad for the first time, we can expect Apple to correspondingly start hindering web apps in order to give native apps an advantage on their platforms.

