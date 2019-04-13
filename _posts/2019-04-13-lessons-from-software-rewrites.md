---
layout: post
title: "Lessons From Software Rewrites"
categories: Software, Development
---

[Herb Caudill](https://twitter.com/herbcaudill) has [a great article on software rewrites](https://medium.com/@herbcaudill/lessons-from-6-software-rewrite-stories-635e4c8f7c22). Herb takes a look a look at six software rewrites[^notrewrites]:

1. Netscape
2. Basecamp
3. Visual Studio & VS Code
4. Gmail & Inbox
5. FogBugz & Trello
6. FreshBooks & BillSpring

What makes this article really shine is that Herb finds quotes from the original decision makers that give insight into the thought process behind each rewrite.

Going backwards for a minute, as Herb notes in the article, Joel Spolsky wrote the [canonical piece  on software rewrites](https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/) in 2000, using the [Netscape Navigator 4 rewrite](https://en.wikipedia.org/wiki/Rewrite_(programming)#Notable_examples) as an example. Joel's article has served its purpose for many years: Talking programmers down from the ledge when they're considering a rewrite. The reason this is important to do isn't because it's never a good idea to do a rewrite, but because programmer's often think it's a good idea even when it's not. Joel's article summarizes the reason why this happens perfectly:

> It’s harder to read code than to write it.

But a fresh take has been long overdue, [Basecamp 3](https://basecamp.com/new) was a ground-up rewrite, that seems to have worked out really well them. David Heinemeier Hansson [wrote about their decision to do a rewrite](https://signalvnoise.com/posts/3856-the-big-rewrite-revisited):

> But there are other types of rewrites. The one most dear to me is the “Don’t Try To Turn A Chair Into A Table” rewrite. It’s the one we committed when we launched the new version of Basecamp a couple of years ago. A full, start-over, everything-is-reimplemented rewrite of Basecamp because we wanted it to do different things.

> Yes, Basecamp Classic and the new Basecamp both juggle many of the same ingredients of project management and collaboration, but they’re mixed together in very different curations. So while we could have gotten from A to B one carefully tested refactoring and commit at the time, it would have been a fool’s errand.

There's a very clear pattern here: Only do a rewrite when you want your product to actually behave differently, and do it as a separate new product designed to replace your old one in time, not as a rewrite of your existing product. Here's how Herb puts it:

> My takeaway from these stories is this: Once you’ve learned enough that there’s a certain distance between the current version of your product and the best version of that product you can imagine, then the right approach is not to replace your software with a new version, but to build something new next to it — without throwing away what you have.

* * *

[^notrewrites]: A quick caveat: Trello and Visual Studio Code aren't rewrites. Those are separate new products that aren't meant to replace the original, and so, while their summaries are worth reading, they don't belong on this list.