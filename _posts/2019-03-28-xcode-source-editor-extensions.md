---
layout: link
title: "Xcode Source Editor Extensions"
categories: Xcode
---

Zoë Smith's fantastic new [tutorial on Xcode Source Editor Extensions](https://nshipster.com/xcode-source-extensions/).

On what people used to be able to make:

> Plugins allowed us to tweak pretty much everything about Xcode: window layout, syntactic and semantic highlighting, changing UI elements, boilerplate generation, project analysis, bindings for something called Vim (?). Looking back at NSHipster’s favorites, some are now thankfully included as a standard feature: inserting documentation comments, switch statement autocompletion or — astonishingly — line breaks in the issue navigator.

On what people can make now[^github]:

> But some bad, if old, news: unlike plugins, these new extensions are seriously limited in scope. They allow pure text manipulation, instigated by the user from a menu command, on one source file at a time — none of the fun stuff, in other words.

File away under Apple becoming less open. It's also a personal pet peeve of mine when a company has a thriving community around one of their products and they choose to kill it by replacing it with something inadequate.

* * *

[^github]: I tried to migrate an AppleScript of mine that [copies a link to the selected text in Xcode on GitHub](https://github.com/robenkleene/AppleScripts/blob/master/Applications/Xcode/Copy%20Markdown%20Source%20Control%20Link%20to%20File.scpt) to the new system but it was too limited to support this (it's particularly telling that a general purpose technology like AppleScript is more powerful than one purpose-built built for Xcode).
