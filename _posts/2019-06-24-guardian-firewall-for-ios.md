---
layout: link
title: "Guardian Firewall for iOS"
categories: Privacy, News
---

[Speaking of privacy software](https://blog.robenkleene.com/2019/06/24/on-cloudflare-warp-privacy/), [Guardian Firewall for iOS](https://guardianapp.com/blog/2019/06/introducing-guardian-firewall-for-ios/) was just announced. It's available to those who pre-ordered now, and everyone else in July:

> The initial 1.0 release of Guardian Firewall primarily does one thing, and it does it well: Block those trying to track you, and tell you who they are as well as what types of data they likely tried to collect.

The application is bit like the venerable macOS app [Little Snitch](https://www.obdev.at/products/littlesnitch/index.html), but for iOS. Like with Little Snitch, the word "firewall" is a bit of a departure from how that term is traditionally used. [Little Snitch's Wikipedia article](https://en.wikipedia.org/wiki/Little_Snitch) states "unlike a stateful firewall, which is designed primarily to protect a system from external attacks by restricting inbound traffic, Little Snitch is designed to protect privacy by limiting outbound traffic".

Guardian Firewall goes one step farther than Little Snitch by doing analysis into the trackers apps are using. Little Snitch only shows you which servers apps are connecting to, Guardian also analyzes the intentions behind those connections:

> In order to effectively keep track of all known trackers being used on iOS, we periodically scan the App Store and use custom automated tooling to decompile, disassemble, and index the contents of iOS apps. Over the course of the last four years, we have developed this custom toolset which now gives us an unprecedented level of insight into network connections, security/privacy issues, and any other information we need from iOS apps.

Guardian is implemented using an [encrypted VPN](https://twitter.com/guardianiosapp/status/1143168911732383746), so it will also cover some of the same territory as [Cloudflare Warp](https://blog.robenkleene.com/2019/06/24/on-cloudflare-warp-privacy/):

> The Guardian Firewall app has been designed to simply act as a client for remotely hosted VPN servers running custom fully-featured firewall software with a configurable JSON API which the device can use to generate pseudonymous EAP access credentials, pull in alerts for recently blocked traffic, and automatically check for physically proximate servers to connect to (in order to reduce latency and improve speeds)

This approach has the same downside as Cloudflare Warp, namely, now all of your traffic has to be routed through Guardian's VPN servers. Here's Guardian's approach to that responsibility:

> Due to the nature of this design, it is important for you to understand that this process involves sending your internet data through our secure firewall servers. In order to mitigate any privacy concerns associated with handling potentially personal internet data, Guardian Firewall is designed with no sign-up process, and no information entry about yourself whatsoever. [...]

> Our lack of information collection may raise an important question: How are we are able to differentiate between a free and a paying user? Well, the only information we need to know is if the user sent us a payment. This allows us to simply use a digital receipt, which is generated on your phone when you make a purchase in the app, as your “all access pass” to our VPN servers and their corresponding APIs. Therefore, Guardian Firewall has no need to ask for any personal information or keep any kind of record about you at all.

Sounds good!
