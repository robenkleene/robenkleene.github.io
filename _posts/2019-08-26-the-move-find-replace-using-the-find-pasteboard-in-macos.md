---
layout: post
title: "The Move: Find & Replace Using the 'Find Pasteboard' in macOS"
categories: macOS, Text-Editor
---

The ["find pasteboard"](https://developer.apple.com/documentation/appkit/nstextview/find_panel_search_metadata?language=objc)[^findclipboard] is an under-utilized feature in macOS. Many users are probably at least partially familiar with it, because it powers several menu items under `"Edit" -> "Find"`, but it's obscure enough to not appear on any of Apple's marketing pages.

The find pasteboard is like the clipboard, in that it stores a bit of data, but it's unlike the clipboard in that you can't paste *from* it. Instead it's used behind the scenes for some find-related features. One of these features is sharing the search term between apps: When you perform a search in a macOS app[^pasteboardavailability], the search term is also automatically added to the find pasteboard, if you then go and search in another app, the search box will be pre-populated with the search term from the first app[^demonstratingfindpasteboard].

Beyond sharing the search term between apps, the find pasteboard is also used by some other menu items under `"Edit" -> "Find"`:

- `⌘G`: Find Next
- `⇧⌘G`: Find Previous
- `⌘E`: Use Selection for Find

The `⌘G` and `⇧⌘G` shortcuts are probably the most well-known of these, while `⌘E` is less well-known. After hitting `⌘E`, the selection is copied to the find pasteboard, so if you then hit `⌘G`, you'll go to the next instance of the selection. This presents the first useful sequence that uses the find pasteboard: You can iterating through each instance of the selected text by hitting `⌘E` and then repeatedly hitting `⌘G`.

## The Move

The move is that name I've given to a sequence of steps that uses the find pasteboard to perform a find and replace. While most text editors have a built-in find and replace, many other places we edit text do not. [Safari](https://en.wikipedia.org/wiki/Safari_(web_browser)) for example doesn't have a built-in find and replace, but the move still works fine. And, even if an app *does* have a built-in find and replace, the move still provides some advantages:

1. The move can be performed entirely from the keyboard. It's usually easy enough to *start* a find and replace using the built-in interface from the keyboard, but subsequent steps, such as triggering the final "replace all", often don't have good consistent keyboard shortcuts.
2. A built-in find and replace often doesn't have an option to only perform the replace on a subset of a document. In other words, it's all or nothing. Since the move only replaces one instance of the search term at a time, you can use it to only replace some instances.

Here's how to perform the move:

1. Select the term you want to replace and hit `⌘E` to copy it to the find pasteboard.
2. Replace the first instance of the search term. Since the search term should still be selected, you can just start typing the replacement.
3. Select the replacement and copy it to the regular clipboard with `⌘C`.
4. The move is now setup: The original search term is on the find pasteboard and the replacement is on the regular clipboard. To replace the next instance of the search term, hit `⌘G` to go to it, then `⌘V` to replace it. You can then continue alternating between `⌘G` and `⌘V` until you've replaced the desired number of instances. "One keystroke to move, another to execute"[^onemoveoneexecute].

And there you have it, a practical example of using the find pasteboard to accomplish a common text editing task in a way that's better in some situations than a built-in find and replace.

* * *

[^findclipboard]: A clipboard is called a "pasteboard" in Apple developer terminology, a term that originated in [NeXTSTEP](https://en.wikipedia.org/wiki/NeXTSTEP). A better colloquial name for the feature is probably the "find clipboard".

[^pasteboardavailability]: Most, but not all, apps implement the find pasteboard. It's implemented automatically by [Cocoa app](https://en.wikipedia.org/wiki/Cocoa_(API)) that use Apple's built-in user-interface elements. But [Electron](https://electronjs.org/) apps for example, usually don't implement it. When an app does implement it, it usually cannot be turned off.

[^demonstratingfindpasteboard]: You can demonstrate sharing the search term between apps by opening a document in [TextEdit](https://en.wikipedia.org/wiki/TextEdit) and using `⌘F` to search for something, then going to Safari and hitting `⌘F`. You should see the same search term from TextEdit auto-populated in Safari.

[^onemoveoneexecute]: In his masterful book on Vim, [*Practical Vim*](https://pragprog.com/book/dnvim2/practical-vim-second-edition), [Drew Neil](https://twitter.com/nelstrom) uses the phrase "one keystroke to move, another to execute" to describe this common pattern in text editing: Hitting one keyboard shortcut to move, and another to replace.

