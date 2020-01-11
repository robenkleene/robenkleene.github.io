---
layout: post
title: "TextMate's Command Composability"
categories: Text-Editor
---


For its complexity level, [TextMate](https://github.com/textmate/textmate) is the most well-designed application I've ever encountered. Featurewise[^features], it doesn't compete  with Vim[^vim], Emacs, or Sublime Text---but the features it does implement are better designed than anywhere else.

TextMate's design elegance is exemplified by its command [composability](https://en.wikipedia.org/wiki/Composability). "Composability" here means commands can be chained together to produce cumulative effects that are logical and useful.

For example, lets say you want to change the name of the `startTime` variable to `startDate` in this [Swift](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/) snippet:

``` swift
struct ProcessInfo: Equatable {
    let identifier: Int32
    let startTime: NSDate
    let commandPath: String
    init(identifier: Int32, startTime: NSDate, commandPath: String) {
        self.identifier = identifier
        self.startTime = startTime
        self.commandPath = commandPath
    }
}
```

One approach you could take is the following:

1. Select `startTime`.
2. Press `⌘E` to "Use Selection for Find".
3. Press `⌘F` to bring up the "Find" dialog.
4. Press `⌥⌘F` to "Find All".
5. Tab to the "Replace:" field.
6. Enter `startDate`.
7. Click "Replace All".
8. Press `⌘W` to dismiss the "Find" dialog.

Here's how TextMate's command composability can be used accomplish the same goal in less steps, and without any annoying dialog boxes or clicking for "Replace All"[^annoying]:

1. Select `startTime`.
2. Press `⌘E` to "Use Selection for Find".
3. Press `⌥⌘F` to "Find All".
4. Enter `startDate`.
5. Enter `⇧⇧` to end multiple cursors.

Here's what it looks like:

![TextMate Demo](https://blog.robenkleene.com/assets/2016-06-20-textmate.gif)

The key is the interpretation of `⌥⌘F` for "Find All". When interpreting this command, TextMate considers the context, and performs the most logical action:

1. The "Find" dialog is not visible.
2. The [find pasteboard](https://developer.apple.com/reference/appkit/nstextview/1670134-find_panel_search_metadata) is populated (by the `⌘E` earlier).

Choosing to initiate multiple cursors.

TextMate's composability can be demonstrated further by performing the same commands with an active text selection. In that case, only instances of `startDate` within the text selection are edited. This idea of acting on the current selection or, in the absence of a selection, the whole document, is pervasive throughout TextMate[^selection].

Command composability is a defining trait of well-designed software---learning a piece of software is an investment, and one of the best ways an application can make the most of that investment is to amplify what you can accomplish for the same effort through command composability.

* * *

[^features]: [Autocomplete](https://en.wikipedia.org/wiki/Autocomplete), [linter](https://en.wikipedia.org/wiki/Lint_(software)) integration, split windows, and [ctags](https://en.wikipedia.org/wiki/Ctags) are the most problematic missing features.

[^vim]: Vim deserves special attention in this post because it also excels at command composability. But Vim has far more design flaws than TextMate. I'd be surprised if anyone can read the chapter on regular expressions in [Practical Vim](https://pragprog.com/book/dnvim2/practical-vim-second-edition) and not come to this same conclusion.

[^selection]: ["Filter Through Command..."](http://manual.textmate.org/text-editing.html#shell-command-filters) is my favorite example.

[^annoying]: "Replace All" does have a keyboard shortcut, `⌃⌘G`, but it's hard to remember. And frankly, OS X dialog boxes don't work well when you want to choose any button other than the default (or `esc` to dismiss). And "Replace All" is too dangerous to make the default.
