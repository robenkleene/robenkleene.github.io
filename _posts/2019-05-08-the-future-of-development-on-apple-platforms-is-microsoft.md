---
layout: post
title: "The Future of Development on Apple Platforms Is Microsoft"
categories: News, Development, iOS, macOS, Microsoft
---

What's the future of programming on Apple devices? Apple has neglected [AppKit](https://en.wikipedia.org/wiki/Application_Kit), the only platform with any success in making native development tools. Not only that, but sandboxing makes distributing programming tools through the Mac App Store all but impossible[^rule252]. The only approach that's even remotely compatible with Apple's platforms are self-contained IDEs, like [Pythonista](https://omz-software.com/pythonista/). But the [astonishing success of Visual Studio Code](/2019/04/10/2019-stackoverflow-developer-survey-results/), whose primary feature is extensibility, has shattered any possibility of self-contained IDEs having a future outside of specialized use cases. But Visual Studio Code can never be compatible with sandboxing on iOS. That means the only viable strategy for development on iOS devices is cloud-based on a remote server.

It's too late for Apple to reverse course on this, and even if they did they've already lost a decade of laying groundwork. Market success is about momentum, and in development tools, Apple has none. But there's one company who has momentum in abundance, and who, not coincidentally, already own programming on the Mac. And here they are now [laying the groundwork for cloud-based development using Visual Studio Code](https://devblogs.microsoft.com/visualstudio/intelligent-productivity-and-collaboration-from-anywhere/), principal program manager Jonathan Carter writes:

> Last week, the Visual Studio Code team released the Remote Development extensions (for Visual Studio Code Insiders) to enable connecting your local tools to a WSL, Docker container, or SSH environment, while retaining the full-fidelity, editing experience in Visual Studio Code (e.g. extensions, themes, debugging). Today, we’re excited to share an early look at Visual Studio Remote Development, which will enable Visual Studio users to achieve the same benefits, and go beyond the limits of their local dev machines. We’re starting with C# and C++, and look forward to working with the community to define the experience.

They already own the most popular text editor on the Mac, and are now poised to own programming on iOS (as soon as the platform is ready for it[^iosstillneeds]). It's clear today that Apple has ceded not just native desktop apps to web apps, but also the future of development tools on their platforms to one company: Microsoft[^afunnything].

* * *

[^rule252]: [App Store Review Guideline 2.5.2](https://developer.apple.com/app-store/review/guidelines/#2.5.2) also explicitly bans extensible apps.

[^iosstillneeds]: iOS still needs mouse input, window-based multi-tasking, and improved text selection before programming on iOS will be viable.

[^afunnything]: A funny thing happens when you stand still, people catch up.
