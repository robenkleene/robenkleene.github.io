---
layout: link
title: "Jumping Directly to Folders on iOS"
categories: 
---

[Federico Viticci](https://twitter.com/viticci) shares [FS Bookmarks](https://www.macstories.net/ios/fs-bookmarks-a-shortcut-to-reopen-files-and-folders-directly-in-the-files-app/), his tool for using URL schemes to jump to specific folders on iOS:

> I’m happy to introduce FS Bookmarks, a shortcut that lets you create direct launchers for files and folders stored in the Files app. FS Bookmarks is a hybrid Shortcuts-Scriptable tool that takes advantage of a native Files API (which I will call “bookmarks”) to expose the filesystem path of any file or folder stored in the Files app.

At this point I stopped reading and started scanning for how he did this because I've never been able to figure it out myself. Here's the trick:

> Under the hood on both iOS and iPadOS, files and folders stored in the Files app have paths such as this one:
>
>	/private/var/mobile/Library/Mobile Documents/\
>	27N4MQEA55~pro~writer/Documents/Image Assets
>
> That's one ugly file path, but it's how the system points to an app's folder. In this case, the file path above is pointing to a folder called 'Image Assets' located under iCloud Drive/iA Writer. Similarly, a PDF document named 'Expenses.pdf' stored in your iCloud Drive Downloads folder should have this kind of filesystem path:
>
>	/private/var/mobile/Library/Mobile Documents/\
>	com~apple~CloudDocs/Downloads/Expenses.pdf
>
> By themselves, these paths are useless as you cannot launch them in any way. However, I've recently discovered that if you combine the Files app's `shareddocuments://` URL scheme with an encoded version of the filesystem path, the file or folder can be reopened directly in the Files app. The launcher URL looks something like this:
>
>	shareddocuments:///private/var/mobile/Library/\
>	Mobile%20Documents/com~apple~CloudDocs/Downloads/\
>	Expenses.pdf

You can get the part of the path that comes after `/private/var/mobile/Library/Mobile Documents/` on your Mac by using the Terminal to `cd` first to `~/Library/Mobile\ Documents`, then into the subdirectory you want to make a URL to, and finally using `pwd` to print the path[^concatenatethepaths]. Viticci continues by describing how the FS Bookmarks shortcut simplifies creating these URLs, but at this point I'd stopped reading to go see if this actually works (it does).

For me this is a breakthrough in the usefulness of iOS because jumping to a specific folder is important for retrieving information from the [file system](https://en.wikipedia.org/wiki/File_system) hierarchy[^replacinghierarchy]. There are two fast methods of retrieving information from the file system: launching and searching. [LaunchBar](https://duckduckgo.com/?q=launchbar&t=osx&ia=about) is an example of a [launcher](https://en.wikipedia.org/wiki/Category:Application_launchers), it's a user-defined index of commonly used actions, whereas [Spotlight](https://support.apple.com/en-us/HT204014), the search built-in to macOS and iOS, is an index of your entire file system. Both present a text box that you can type into to find what you're looking for, but their use cases are different. A launcher is better if you already know exactly what you're looking for, because its index is smaller and faster. Search is better if you're not sure exactly what you're looking for, because its index is larger.

A launcher does not have to have text-based interface, icons are commonly used instead[^searchisalwaystext]. [The Dock](https://support.apple.com/guide/mac-help/dock-mh35859/mac) is a launcher in macOS, and [SpringBoard](https://en.wikipedia.org/wiki/SpringBoard), the default screen on iOS, is a launcher for apps. [Shortcuts](https://support.apple.com/en-us/HT208309) makes a great launcher for everything else on iOS, and that's what I use to open these URLs.

The key to using the file system's hierarchy effectively is to use a launcher to jump to a standard base folder, instead of jumping directly to your final destination[^theterminalisanexception]. For example, if you have a "Projects" base folder, you'd jump to that with your launcher instead of jumping directly to a specific project folder like ["Repla"](https://repla.app/). You'd jump to "Projects", then navigate to the "Repla" subfolder inside it. Jumping to a standard base folder instead of trying to jump to the final destination is better for the following reasons:

- Keeping all of the individual project folders in your launcher means micromanaging its index.
- Individual project names often have too many hits, e.g., if you're working on "Repla", you probably have a lot of files with "Repla" in the name.
- By jumping into individual project folders, you're not building long-term reusable [muscle memory](https://en.wikipedia.org/wiki/Muscle_memory), you lose your muscle memory when you switch projects.

With Viticci's URLs we can jump to a standard base folder on iOS for the first time.

* * *

[^concatenatethepaths]: The location of the `Mobile Documents` directory itself *is not* the same between iOS and Mac, so everything that comes after `Mobile Documents` has to be appended to the root path `/private/var/mobile/Library/Mobile Documents/`.

[^replacinghierarchy]: There's been a decade long attempt to replace hierarchy with another form of organization, usually tagging. The argument being [hierarchy is confusing](https://ia.net/topics/mountain-lions-new-file-system). Which may be true, but hierarchy also fits nicely into the visual metaphor of folders. Tagging, on the other hand, is an entirely abstract concept, so it's likely even more confusing. As far as I can tell, every attempt at replacing hierarchy has been a failure (when was the last time Apple talked about tagging?). The replacements are used less, harder to understand, and less effective than using hierarchy. This is usually what happens when you try to replace a ubiquitous technology that's been refined over decades with something new, you get something that's worse by every metric.

[^searchisalwaystext]: A search interface, on the other hand, is essentially always text based.

[^theterminalisanexception]: The only exception to this I've found is at the terminal. The [`z`](https://github.com/rupa/z/) utility tracks which folders you've visited recently, and makes it easy to jump quickly to those. I use [`fasd`](https://github.com/clvv/fasd) combined with [`fzf`](https://github.com/junegunn/fzf) to [fuzzy find](https://en.wikipedia.org/wiki/Approximate_string_matching) recent folders. This is the most effective way of traversing the file system I've found, but this approach isn't available in any GUI environment that I'm aware of.
