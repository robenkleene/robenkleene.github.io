---
layout: post
title: "`fd` For Find Files"
categories: Unix
---

One of the concepts I want to emphasize is the advantage of using small "[composable](https://en.wikipedia.org/wiki/Composability)" Unix utilities. To this end, I use [`rg`](https://github.com/BurntSushi/ripgrep) for all kinds of operations that search or list files. One advantage of this approach is that convenient rules setup in `rg`, e.g., ignoring `.git` directories and files in `.gitignore`, then propagate over every file and search operation I perform.

But something that's always bothered me is since `rg` [doesn't support finding directories](https://github.com/BurntSushi/ripgrep/issues/169) (understandably), I lose `rg` semantics when searching for directories, and instead get decades old [`find`](https://en.wikipedia.org/wiki/Find_(Unix)) semantics, which don't do smart things like ignoring things that probably should be ignored.

So I was delighted when I followed the `ripgrep` [GitHub issue](https://github.com/BurntSushi/ripgrep/issues/169) to the [`fzf README`](https://github.com/junegunn/fzf#respecting-gitignore) to [`fd`](https://github.com/sharkdp/fd). A utility that does exactly what I'm looking for, find directories while replicating the smart take on semantics used by `rg` (and other modern [unix](https://github.com/ggreer/the_silver_searcher) [utilities](https://beyondgrep.com/)).

Here's an example of my favorite use of this, replacing the built-in `fzf` `zsh` widget's [`FZF_ALT_C_COMMAND`](https://github.com/junegunn/fzf/blob/24236860c89242ac0a341ff911c93f25032dc051/README.md#key-bindings-for-command-line), which enables a key command to fuzzy filter a directory to `cd` to recursively.

![fd](https://blog.robenkleene.com/assets/2018-03-08-fd.gif)
