---
layout: post
title: "Live Search"
categories: Unix, Emacs, Vim
---

Think about how search works in your favorite text editor. First you probably enter your search term, and then hit enter before your search results start showing up. Now think about popular consumer apps work: Does Google sit around waiting enter before showing you results? How about Spotlight? iTunes? Mail? The App Store?

From a user experience perspective, I don't see any reason a programmers' editor should work any differently. The great irony being that programmers spend all-day improving apps for other people, while our own tools get left behind[^others].

With that said, there are a couple of ways to do a live search of source code files today; I on day to see this implemented in every text editor.

## Emacs

You can do  a live search in Emacs, by using the `helm-ag` package's `helm-do-ag` command[^helm]. Here's what it looks like searching [Web Console](https://github.com/robenkleene/webconsole)'s source code for the string "`toggledebugmode`", and then hitting enter to go to that line of code (the [`toggleDebugMode:`](https://github.com/robenkleene/webconsole/blob/6373e62508fd9e9f41b46910e7460833af6b855f/Web%20Console/Web%20Console/WCLAppDelegate.m#L65) method):

![helm-do-ag](/assets/2016-03-17-helm-do-ag.gif)

## `fzf`

Junegunn Choi's fantastic command-line filtering utility [`fzf`](https://github.com/junegunn/fzf) can also do a live search from the command line, in a manner of sorts. Here's an example from the [`fzf` wiki](https://github.com/junegunn/fzf/wiki/examples)[^ag]:

``` bash
# with ag - respects .agignore and .gitignore
ag --nobreak --nonumbers --noheading . | fzf
```

That's not very useful on it's own, because after you've selected your match, the line will just get printed to the console. So I've written a [fish shell function](https://github.com/robenkleene/Dotfiles/blob/a32996fa1d7af58f929a94db5fc4c05f36d42b47/config/fish/config.fish#L102-L108) that opens that line in Vim.  Here's what that looks like, with the same search as before:

![`fzf` Vim Lines](/assets/2016-03-17-fzf-vim-lines.gif)

This is piping all the lines of all the files into `fzf`, which then hides the lines that *don't* match your search term. Making this a filter, not a search. Which means *all* the lines of *all* the files need to be stored in memory simultaneously while this command is running. In practice, `fzf` handles this extremely well[^filtering]. The `helm-do-ag` command, on the other hand, performs a regular search, which is preferable since only the *matchings* lines are stored in memory.

So there you have it, a case for improving on the shortcomings of our current tools, and some ways to work around those limitations today.

* * *

[^others]: Consider how much find and replace would benefit from a live preview. [TextMate 2](https://github.com/textmate/textmate) and Emacs do implement this in some circumstances, but that's far from typical.

[^helm]: [Tu Do](http://tuhdo.github.io/) has a [great introduction](http://tuhdo.github.io/helm-intro.html) to the Emacs [Helm](https://github.com/emacs-helm/helm) package. This was the first place I saw an example of doing live search in Emacs.

[^ag]: Both of these commands are powered by [The Silver Searcher](https://github.com/ggreer/the_silver_searcher).

[^filtering]: To test, I piped a directory of five million lines of code through `fzf` and it handled it just fine. That's right, `fzf` stayed performant filtering *five million* lines of code live. If that's not a great illustration of software quality then I don't know what is. Now it used a lot of RAM, to the tune of 6GB, and I wouldn't make a habit of doing this regularly, but it's impressive it handled it at all.
