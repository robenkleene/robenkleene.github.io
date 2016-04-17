---
layout: post
title: "Live Search With Vim & Emacs"
categories: Unix, Emacs, Vim
---

Think about how search works in your favorite text editor. You probably type your search term then hit enter before your search results start appearing. Now think about how popular apps work: Does Google wait around for enter before showing you results? How about Spotlight? iTunes? Mail? The App Store?

I don't see any reason programmers' editors shouldn't work the same way. The great irony of being a programmer is that you spend all-day improving apps for other people, while your own tools are late to get the same innovations[^others].

There are a couple of ways to search source code files live today; one day I hope to see this in every text editor.

## Emacs

Emacs can do live search using the `helm-do-ag` command from the [`helm-ag` ](https://github.com/syohex/emacs-helm-ag) package[^helm]. Here's what it looks like searching for the string "`toggledebugmode`" in [Web Console](https://github.com/robenkleene/webconsole)'s source code, followed by hitting enter to go to that [line of code](https://github.com/robenkleene/webconsole/blob/6373e62508fd9e9f41b46910e7460833af6b855f/Web%20Console/Web%20Console/WCLAppDelegate.m#L65):

![helm-do-ag](/assets/2016-03-17-helm-do-ag.gif)

## `fzf`

Junegunn Choi's fantastic command-line filtering utility [`fzf`](https://github.com/junegunn/fzf) can also do a live search from the command line, in a manner of sorts. Here's an example from the [`fzf` wiki](https://github.com/junegunn/fzf/wiki/examples)[^ag]:

``` bash
# with ag - respects .agignore and .gitignore
ag --nobreak --nonumbers --noheading . | fzf
```

That's not very useful on it's own, because all it does is print the selected line to the console. So I wrote a [fish shell function](https://github.com/robenkleene/Dotfiles/blob/a32996fa1d7af58f929a94db5fc4c05f36d42b47/config/fish/config.fish#L102-L108) that opens the selected line in Vim.  Here's what that looks like, using the same search term as before:

![`fzf` Vim Lines](/assets/2016-03-17-fzf-vim-lines.gif)

This is piping all the lines of all the files being searched into `fzf`, which then hides the lines that *don't* match your search term. That makes this a filter, not a search, and it means *all* the lines of *all* the files being searched need to be stored in memory while the command is running (in other words, it'll use a lot of RAM). In practice, `fzf` handles this extremely well[^filtering]. The `helm-do-ag` command, on the other hand, performs a real search, which is preferable since only the *matchings lines* are stored in memory.

So there you have it, a case for improving our current tools and some suggestions for working around those limitations today.

* * *

[^others]: Consider how much find and replace would benefit from a live preview. [TextMate 2](https://github.com/textmate/textmate) and Emacs implement this in some circumstances, but it's far from typical.

[^helm]: [Tu Do](http://tuhdo.github.io/) has a [great introduction](http://tuhdo.github.io/helm-intro.html) to the Emacs [Helm](https://github.com/emacs-helm/helm) package; this was the first place I saw live search in Emacs.

[^ag]: Both of these commands are powered by [The Silver Searcher](https://github.com/ggreer/the_silver_searcher).

[^filtering]: I tried piping a directory of five million lines of code through `fzf` and it handled it just fine. That's right, `fzf` stayed performant filtering *five million* lines of code live. If that's not a great illustration of software quality then I don't know what is. Now it used a lot of RAM, to the tune of 6GB, and I wouldn't make a habit of doing it regularly, but it's impressive that it handled it at all.
