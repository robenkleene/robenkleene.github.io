---
layout: post
title: "On Siri Shortcuts Coming to the Mac"
categories: Automation, Professional, macOS, News
---

Yet another scoop from [Guilherme Rambo](https://twitter.com/_inside) for 9to5Mac, [Siri Shortcuts is coming to the Mac](https://9to5mac.com/2019/04/19/siri-shortcuts-screen-time-mac/). It says it will only work with Marzipan apps:

> According to sources, only Marzipan apps will be able to take advantage of the Shortcuts support on macOS. 

Siri Shortcuts has two types of integrations: The first simply use [URL Schemes](https://developer.apple.com/library/archive/featuredarticles/iPhoneURLScheme_Reference/Introduction/Introduction.html) to pass textual data between applications. The second are custom-built-for-Shortcuts integrations using the [`SiriKit`](https://developer.apple.com/sirikit/) SDK. When the report says that it's Marzipan only, I'm assuming that only applies to the second type, that depend on the `SiriKit` SDK (the SDK probably needs to ported to support [AppKit](https://en.wikipedia.org/wiki/Application_Kit), which would be too much work right now). The first type should work just fine with macOS, because macOS already supports URL schemes[^possibletoblock].

On the one hand, I love it when Apple invests in automation, but on the other hand Siri Shortcuts seem like a short-sighted solution to me. Both integration types have serious problems. The URL scheme approach doesn't have [object types](https://en.wikipedia.org/wiki/Object_(computer_science)). This means even simple queries like "give me the name of every song by Nirvana" require enormous foresight by the developer[^likegraphql]. Whereas an automation implementation that uses object types, like [AppleScript](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptX/AppleScriptX.html), easily supports this type of query (first, give me every song by Nirvana, then give me the title of all those songs---the object type is used to determine which songs are by Nirvana, and then what the titles are). AppleScript is able to support complex queries without developers implementing custom queries themselves, all they need to do is expose the application's [object graph](https://en.wikipedia.org/wiki/Object_graph) to AppleScript.

The second type type of integration, where developers add support themselves for common actions, seems inherently flawed. The problem is, if an action is common enough that it's worth it for the developer to write custom support for it, then that probably means that workflow is already well supported in the app itself. The point of custom automation is that it provides freeform support for all the unique ways users want to use your app. Sure having custom integrations makes it easier to do things like automatically order a ride home with just one button tap, but was that really so hard to begin with? I guess it's something, but these technologies are being billed as replacements for deeper and more flexible technologies like AppleScript, which can do a lot more than that.

And I still wonder if *any* of these technologies are accessible to most users? People have been trying to make programming more accessible to non-programmers since the beginning and so far everyone has failed. This means automation technology ends up hinging on whether programmers are able to do useful things with it. And right now it looks like we're replacing something that's useful to programmers, AppleScript, with something less useful with Siri Shortcuts.

* * *

[^possibletoblock]: It's possible the URL scheme approach will be blocked too, but it seems unlikely. A more likely interpretation is that Apple considers `SiriKit` the "real" implementation, and that that caused the miscommunication.

[^likegraphql]: Being able to make nuanced queries when an API can't return data types is the same problem that [GraphQL](https://graphql.org/) solves. So theoretically this problem can be solved within URL-based approach. But coming up with, and implementing, a standard, and then retroactively applying it everywhere could take as long as a decade. I'd prefer Apple sort out these problems *before* shipping Siri Shortcuts.