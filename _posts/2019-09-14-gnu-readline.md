---
layout: link
title: "GNU Readline"
categories: Unix, Text-Editor
---

Sinclair Target [writing about GNU Readline](https://twobithistory.org/2019/08/22/readline.html) for Two-Bit History:

> GNU Readline is an unassuming little software library that I relied on for years without realizing that it was there. Tens of thousands of people probably use it every day without thinking about it. If you use the Bash shell, every time you auto-complete a filename, or move the cursor around within a single line of input text, or search through the history of your previous commands, you are using GNU Readline. When you do those same things while using the command-line interface to Postgres (psql), say, or the Ruby REPL (irb), you are again using GNU Readline. Lots of software depends on the GNU Readline library to implement functionality that users expect, but the functionality is so auxiliary and unobtrusive that I imagine few people stop to wonder where it comes from.

First, a clarification: macOS does not actually use [GNU Readline](https://en.wikipedia.org/wiki/GNU_Readline), it uses [`libedit`](https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man3/editline.3.html), which is a [BSD](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution) version of Readline. But that distinction doesn't matter much, because the programs are similar. What does matter is realizing that most shell programs that take commands, like Bash, all use the same library to edit commands, which is essentially a single line text editor. If you learn that library's keyboard bindings, they'll also work in other programs, like [`IRB`](https://en.wikipedia.org/wiki/Interactive_Ruby_Shell).
