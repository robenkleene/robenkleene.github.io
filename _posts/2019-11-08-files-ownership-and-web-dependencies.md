---
layout: link
title: "Files, Ownership and Web Dependencies"
categories: Web, Software
---

[Alex Danco](https://twitter.com/Alex_Danco) has another great piece on files and ownership, ["Everything is Amazing, But Nothing is Ours"](https://alexdanco.com/2019/10/26/everything-is-amazing-but-nothing-is-ours/), building on [Simon Pitt's](https://twitter.com/Simon_Pitt) [piece on the same topic](https://onezero.medium.com/the-death-of-the-computer-file-doc-43cb028c0506) that [I wrote about earlier](https://blog.robenkleene.com/2019/10/19/the-death-of-files/). Drance quotes this observation from Pitt:

> The other day, I came across a website I’d written over two decades ago. I double-clicked the file, and it opened and ran perfectly. Then I tried to run a website I’d written 18 months ago and found I couldn’t run it without firing up a web server, and when I ran NPM install, one or two of those 65,000 files had issues that meant node failed to install them and the website didn’t run. When I did get it working, it needed a database. And then it relied on some third-party APIs and there was an issue with CORS because I hadn’t whitelisted localhost.

> My website made of files carried on, chugging along. This isn’t me saying that things were better in the old days. I’m just saying thatyears ago websites were made of files; now they are made of dependencies.”

> Years ago websites were made of files; now they are made of dependencies.

And adds to it:

> The last line really hit a chord with me: that’s exactly it. Worlds of scarcity are made out of things. Worlds of abundance are made out of dependencies. That’s the software playbook: find a system made of costly, redundant objects; and rearrange it into a fast, frictionless system made of logical dependencies. The delta in performance is irresistible, and dependencies are a compelling building block: they seem like just a piece of logic, with no cost and no friction. But they absolutely have a cost: the cost is complexity, outsourced agency, and brittleness. The cost of ownership is up front and visible; the cost of access is back-dated and hidden.

I'm not sure I buy the dependency line. The website that can be opened just by double-clicking is presumably just HTML, JavaScript, and CSS, which means it also can't persist data on the server. In the history of making websites, there's never been a way to persist data on the server without external dependencies, even twenty years ago. Sure there's also a [trend of developers using too many dependencies](https://www.davidhaney.io/npm-left-pad-have-we-forgotten-how-to-program/), but the most significant difference here comes from going from having zero dependencies to one dependency. Once you have one dependency, which you'll need to persist data on the server, you won't be able to open the website anymore just by double-clicking.
