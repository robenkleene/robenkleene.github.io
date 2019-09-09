---
layout: link
title: "Firefox Update Will Soon Reduce Power Usage on macOS"
categories: News, Firefox, Performance
---

Catalin Cimpanu, [reporting for ZDNet](https://www.zdnet.com/article/upcoming-firefox-update-will-decrease-power-usage-on-macos-by-up-to-three-times/), summarizing a [Mozilla bug ticket](https://bugzilla.mozilla.org/show_bug.cgi?id=1429522#):

> Mozilla teased today an upcoming update for Firefox on macOS that they say will reduce power consumption by a factor of up to three.

The release should be out next month:

> The fix is expected to land in the stable version of Firefox in late October 2019, with the release of Firefox 70.

The improvement was achieved by switching some rendering operations to [Core Animation](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CoreAnimation_guide/Introduction/Introduction.html):

> Mozilla engineers managed to cut down Firefox's power consumption by switching browser page rendering operations to Core Animation, the graphics rendering and animation engine that's built into both iOS and macOS.

Before you get too excited:

> This, according to a series of tests, has put Firefox on par with Chrome, in regards to power usage.

I'm always happy to see apps prioritize performance. Personally, I use Safari as my main browser because it supports AppleScript, has the lowest energy impact, and it's the most native. For example, it's the only one of the big three where [macOS text replacements](https://support.apple.com/guide/mac-help/replace-text-punctuation-documents-mac-mh35735/mac) works in the URL bar. I use this feature, along with the `site:` [search operator](https://support.google.com/websearch/answer/2466433), as a cross-platform way to perform [keyword searches](https://support.mozilla.org/en-US/kb/how-search-from-address-bar?redirectlocale=en-US&redirectslug=Smart+keywords) (e.g., `s:df` expands to `site:daringfireball.net`).
