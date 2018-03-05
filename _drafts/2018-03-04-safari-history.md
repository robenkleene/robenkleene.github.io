---
layout: post
title: "A Quick Command-Line Interface for Safari History"
categories: Unix, macOS
---

I got so frustrated by not being able to quickly find web pages in my Safari history that I hacked together a simple command-line interface that lets me search my history with [`fzf`](https://github.com/junegunn/fzf).

It comes in two pieces, a [shell script](https://github.com/robenkleene/Scripts/blob/6b2c4ae888132998ee1a87f40d8bfb0bc1373fea/safari-history-dump.sh#L3-L12) that uses the `sqlite3` command-line utility to dump the title and URL of each web page:

``` bash
read -r -d '' select << EOM
SELECT title, url
FROM history_visits
INNER JOIN history_items
ON history_visits.history_item = history_items.id
ORDER BY visit_time desc
LIMIT 1000;
EOM

sqlite3 -noheader -separator $'\t' ~/Library/Safari/History.db \
  "$select" 2>/dev/null \
  | uniq
```

And a [`zsh` function](https://github.com/robenkleene/Dotfiles/blob/f1f0fa59adfdba7471e9df6de0ecec8db54c46ac/zsh/fzf.zsh#L200-L205) that pipes its output through `fzf`:

``` bash
fzf-safari-history-open() {
  local result=$(safari-history-dump \
	| FZF_DEFAULT_OPTS="-m --reverse --prompt \"Safari History> \" \
	--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS" $(__fzfcmd) +m \
	| cut -f2)
  if [[ -n $result ]]; then
	open "$result"
  fi
}
```

Here's what it looks like:

![safari-history](/assets/2018-03-04-safari-history.gif)
