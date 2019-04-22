---
layout: post
title: "On Siri Shortcuts Coming to the Mac"
categories: Automation, Professional, macOS, News
---

Yet another scoop from [Guilherme Rambo](https://twitter.com/_inside) for 9to5Mac, [Siri Shortcuts is coming to the Mac](https://9to5mac.com/2019/04/19/siri-shortcuts-screen-time-mac/). It says it will only work with Marzipan apps:

> According to sources, only Marzipan apps will be able to take advantage of the Shortcuts support on macOS. 

There are two kinds of integration with Siri Shortcuts: The first simply uses [URL Schemes](https://developer.apple.com/library/archive/featuredarticles/iPhoneURLScheme_Reference/Introduction/Introduction.html) to pass textual data between applications. The second are custom, built-for-Shortcuts, integrations using the [`SiriKit`](https://developer.apple.com/sirikit/) SDK. When the report says that it's Marzipan only, I'm assuming that only applies to the second type that depend on the `SiriKit` SDK (porting the SDK to work with [AppKit](https://en.wikipedia.org/wiki/Application_Kit) was probably too much work right now). But the first king should work just fine with macOS, because macOS already supports URL schemes[^possibletoblock].

On the one hand, I always love seeing Apple invest in automation, but on the other hand, Siri Shortcuts seem like a short-sighted solution. Both kinds of integration have serious problems. The URL scheme approach lacks [object types](https://en.wikipedia.org/wiki/Object_(computer_science)). This means even simple queries like "give me the name of every song by Nirvana" require foresight by app developers[^likegraphql]. Whereas an automation solution with object types, like [AppleScript](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptX/AppleScriptX.html), easily supports this type of query (first, give me every song by Nirvana, then give me the title of all those songs---the object type is used to determine which songs are by Nirvana, and then what the titles are). AppleScript is able to support queries without app developers implementing them; all they need to do is expose the application's [object graph](https://en.wikipedia.org/wiki/Object_graph) to AppleScript.

The second type type of integration, where app developers add support themselves for common actions, seems inherently flawed. The problem is, if an action is common enough for the app developer to write custom support for it, then that probably means that workflow should just be well supported in the app itself. The whole point of custom automation is that it provides free-form support for all the unique ways users might want to use your app. Sure having custom integrations makes it easier to do things like automatically order a ride home with just one button tap, but was that really so hard to begin with? I guess it's something, but these technologies are being billed as replacements for deeper and more flexible technologies, like AppleScript, that can do a lot more than that.

And I still wonder if *any* of these technologies are really accessible to most users? We've been trying to make programming more accessible to non-programmers since the beginning, and so far we've failed. This means the usefulness of automation technology ends up hinging on whether programmers can do useful things with it. Right now it looks like we're replacing something that's useful to programmers, AppleScript, with something that's less useful with Siri Shortcuts.

* * *

[^possibletoblock]: It's possible the URL scheme approach will be blocked too, but it seems unlikely. A more likely interpretation is that Apple considers `SiriKit` the "real" implementation, and that that caused a miscommunication.

[^likegraphql]: Being able to make nuanced queries when an API can't return object types is the same problem that [GraphQL](https://graphql.org/) solves. So theoretically this problem can be solved within an all-URL-based approach using URL schemes. But coming up with and implementing a standard, and then retroactively getting it applied everywhere could take a decade. I'd prefer it if Apple had sorted out these problems *before* shipping Siri Shortcuts.
