---
layout: link
title: "Adding Custom `man` Pages From Markdown Notes"
categories: Unix, Markdown
---

I recently [found out](https://news.ycombinator.com/item?id=17801394) it's surprisingly easy to add your own `man` pages from Markdown notes.

Just [add the path](https://github.com/robenkleene/Dotfiles/blob/0c78619fecdb94858142c1a7537fb7643ae68c07/zshenv#L33) to the `MANPATH` environment variable:

```
export MANPATH=$MANPATH:$HOME/.man
```

Then [generate](https://github.com/robenkleene/Dotfiles/blob/0c78619fecdb94858142c1a7537fb7643ae68c07/install/man/install.sh) [your man pages](https://github.com/robenkleene/Dotfiles/blob/0c78619fecdb94858142c1a7537fb7643ae68c07/install/man/install.sh) using [pandoc](https://pandoc.org):

```
pandoc --standalone --to man --from markdown "my-note.md" --output "$HOME/.man/man9/my-note.9"
```

The `9` is the [`man` page section](https://man7.org/linux/man-pages/man7/man-pages.7.html), I chose `9` for my own notes because there weren't many existing `man` pages in that section. This means I can tab complete from only my notes by typing for example `man 9 my-⇥`.
