---
layout: post
title: "Web, Mobile, and Desktop Apps, and Their Benefits"
categories: Software, Web, Mobile
---

Once upon a time desktop apps reigned supreme, they were the only game in town. When the calendaring web app [30 Boxes](https://en.wikipedia.org/wiki/30_Boxes) was released in 2006, a couple of months before [Google Calendar](https://en.wikipedia.org/wiki/Google_Calendar), the idea of a web-based calendar was still novel. Back then, your calendar was managed by a native desktop app like [Microsoft Outlook](https://en.wikipedia.org/wiki/Microsoft_Outlook) or [iCal](https://en.wikipedia.org/wiki/Calendar_(Apple)). Now Google Calendar is probably[^googlecalendarmarketshare] the most popular calendar app there is, and desktop and laptop sales [are declining overall](https://www.pcmag.com/news/361916/pc-sales-keep-falling-but-big-manufacturers-are-doing-just). People are using their mobile devices for tasks they once would have used a desktop or a laptop for.

The [post-PC era](https://en.wikipedia.org/wiki/Post-PC_era) means the desktop, and to a lesser extent, the web, are in decline, and mobile is on the rise. But what do we make of the fact that some areas of native desktop software [seemingly have a gigantic lead](https://blog.robenkleene.com/2019/08/07/apples-app-stores-have-failed-creative-apps/) that doesn't seem to be budging?

We now have three separate, distinct platforms: web, mobile, and desktop. Desktop was here first, so it's inevitably losing market share as the other two gain it. The web came next, so it's also losing it as mobile gains it. But things aren't as simple as they seem when you look closely: Desktop software hasn't really changed much since the web and mobile came along. The top 10 free apps in the Mac App Store include both the iWork and Microsoft Office suites, and the top paid apps include both [Logic Pro X](https://www.apple.com/logic-pro/) and [Final Cut Pro X](https://www.apple.com/final-cut-pro/)[^othercreativesoftwareisntallowed]. These are the same apps that would have been the most popular 20 years ago, long before mobile, and before the web really took off as an app platform. The iOS App Store, on the other hand, is dominated by games and social media apps (although both Google Docs and Gmail make the top ten).

## The Types of Apps in Transition

If the desktop app market hasn't changed that much, then where is the transition to mobile coming from? The simplest answer is that many of the new use cases that arose with the web, the biggest example being social networking, have [transitioned from the web to mobile](https://www.statista.com/statistics/377808/distribution-of-facebook-users-by-device/)[^dontforgetchatapps].

This categorization isn't perfect, for example, it doesn’t account for chat apps like [AIM](https://en.wikipedia.org/wiki/AIM_(software)) and [ICQ](https://en.wikipedia.org/wiki/ICQ) which were native desktop apps, not web apps, and have now been replaced by mobile apps like Messages, Slack, and WhatsApp. “Network-enabled apps” is probably a more precise term, but web apps is fine for shorthand. The collaborative nature of the web still captures the spirit of the native desktop chat apps.

The contrast between the decline of native desktop chat apps, and social media on the web, compared to the continued relevance of traditional desktop use cases, like Logic Pro X, and Final Cut Pro X, where it's *mobile* that's struggling for relevance, highlights a flaw in the post-PC narrative of a declining desktop. If that narrative were accurate, you'd expect to see a decline in *all desktop use cases* that looks something like the desktop chat apps, but we don't.

## The Platform Advantage Matrix

What's happening isn't a transition, it's a migration. Apps are migrating to the platform whose advantages best fit their use case. I've tried to summarize the advantage of each platform in a single word[^platformsummarycaveats]:

- **Desktop**: Power
- **Mobile**: Simplicity
- **Web**: Collaboration[^collaborationisdeceptivelyhuge]

The **desktop** is for apps with long lists of features, the defining characteristic of powerful apps is that they support an ecosystem of third-party [plugins](https://en.wikipedia.org/wiki/Plug-in_%28computing%29). The **web** has the best features for allowing people to view and edit the same content, [the URL is the easiest way to share anything](https://blog.robenkleene.com/2019/05/02/local-data-the-cloud/). **Mobile** is the gold standard of making apps easy to install, easy to run, easy to use, and has convenience features like [prefetching](https://en.wikipedia.org/wiki/Prefetching).

Simplicity is desirable in all apps, except for those used for creation, where it runs contrary to the flexibility necessary for expression. So mobile apps are the baseline, and the best the platform for an app, unless one of the advantages of the other two platforms is more important: If its main purpose is to be powerful or to facilitate collaboration. The reason so many apps support both mobile and web, without having a native desktop app, is because collaboration and simplicity complement each other, while power is at odds with both[^powerisatoddswithcollaboration].

## Apps & Their Platforms

Here are some examples of apps categorized by the platform advantage that's their highest priority:

- **Collaboration**: [Trello](https://trello.com/s), [Slack](https://slack.com/), [Figma](https://slack.com/)
- **Power**: [Final Cut Pro X](https://www.apple.com/final-cut-pro/), [Logic Pro X](https://www.apple.com/logic-pro/), [Adobe After Effects](https://www.adobe.com/products/aftereffects.html)
- **Simplicity**: [Facebook](https://www.facebook.com/), [Instagram](https://www.instagram.com/), [Twitter](https://twitter.com/home)
- **Special**: [Procreate](https://procreate.art/), [Webflow](https://webflow.com/), [OmniFocus](https://www.omnigroup.com/omnifocus/)

Facebook, Instagram, and Twitter all end up in simplicity, because while social media is inherently collaborative, the space is so competitive that zero compromises in the all important simplicity category ends up being the highest priority. Trello and Slack are the inverse, with less competition for their categories, their essences is reflected as collaborative software. Of course, they also have mobile apps, but their native apps feel more like web apps than truly native first apps, because collaboration is their highest priority. Almost all of the collaboration and simplicity apps have both mobile and web apps (the only exception is Figma), while none of the power apps have either mobile or web apps, because while simplicity and collaboration are is alignment, power conflicts with collaboration and simplicity.

Figma is actually quite powerful, but it ends up in the collaboration category because that's it's defining trait. You could say that Figma's marketplace bet is that the interface design industry will sacrifice some power in order to to collaborate more effectively. Notably an app like Figma will still leave room for other more powerful desktop apps in the same category, because there will always be some people that want the additional features that Figma sacrifices in order to be more effective at collaboration.

There's also a special category for apps that don't fit anywhere else. This is mostly to illustrate the flaws of this exercise. The software landscape is messy. Every app is made up of many small decisions, and they reflect their creators, just as much as they reflect the market place. Any attempt to pigeonhole them is bound to run into problems. But the idea is, if you zoom out far enough, I do think some patterns emerge that can help us better understand the platform migration underway today.

## Conclusion

The goal of all this is predict where software is going. It's common today to predict that mobile, and to a lesser extent, the web, are going to replace the desktop. Steve Jobs famously [said](http://allthingsd.com/20100601/steve-jobs-session/) the desktop is going to be like trucks[^trucksarepopular]. But I think we have a more direct comparison: the command line. The command line was once the only interface computers had, then the [graphical user interface](https://en.wikipedia.org/wiki/Graphical_user_interface) came along, and now that's the main way the vast majority of users interact with their computers. But that wasn't the end for the command line. It's continued to be an indispensable tool for developers, to the degree that software development is practically impossible without it[^programmingontheipadneesacommandline].

The future of the desktop might be like command line. That might sound like faint praise, but that depends on the prism you're looking through. If the desktop continues to be the best place to do the most exciting things you can do with a computer, things like 3D, audio, video, motion graphics, and programming, all of which haven't budged so far since the introduction of mobile, then it will continue to be the most important platform for all the things I care about. Sure, I'll still have an iPhone and an iPad, and I'm sure there will be some great creative tools on those platforms, just like there are some great GUI and web tools for programming today. But if the desktop continues to be the best place to do the most exciting things you can do with a computer, then to me that's the platform that will have won.

* * *

[^googlecalendarmarketshare]: I'm not aware of any reliable market share numbers for calendaring applications, but while [Microsoft Office is clearly more popular](https://blog.robenkleene.com/2019/08/31/office-suite-market-share/) in the enterprise, I'm assuming Google Calendar is more popular for individual consumers.

[^othercreativesoftwareisntallowed]: Presumably more apps like Final Cut Pro and Logic Pro X would be in the Mac App Store if Apple eased up on the [sandboxing restrictions](https://developer.apple.com/app-sandboxing/) for Mac App Store apps.

[^dontforgetchatapps]: There are also new categories of app that the mobile form factor, and economic model, have enabled. Some examples are the wonderful [Procreate](https://procreate.art/), and the explosion of mobile gaming, but those are tangential to this post where we're trying to figure out which use cases are moving to which platforms and why.

[^platformsummarycaveats]: Summarizing the advantages of each platform with a single word is inherently flawed, because it neglects a bunch of secondary characteristics each platform has. For example, the web is also the easiest way to make an app available on any device, and mobile grants access to sensors and data that aren't available anywhere else. The goal here is to distill *the essence* of a platform, in order to create a framework we can use to look for broad patterns.

[^collaborationisdeceptivelyhuge]: Collaboration is much broader than it at first appears, encompassing not just examples like Google Docs, but also, [content management systems](https://en.wikipedia.org/wiki/Content_management_system), or any kind of employee portal. The majority of software used to run businesses is collaboration software.

[^powerisatoddswithcollaboration]: Power is at odds with collaboration because, the more powerful an app is, the harder it is to use, and the harder it is to use, the fewer people who can use it, which means fewer people to colloborate with.

[^trucksarepopular]: Amusingly, the [top selling vehicle in the US](https://en.wikipedia.org/wiki/List_of_best-selling_automobiles#National_bestsellers) is the [Ford F-Series truck](https://en.wikipedia.org/wiki/Ford_F-Series).

[^programmingontheipadneesacommandline]: The lack of a command line appears to be single handedly holding back programming on an iPad.
