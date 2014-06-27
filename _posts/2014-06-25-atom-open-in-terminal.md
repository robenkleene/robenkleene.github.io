---
layout: post
title: "\"Open in Terminal\" for Atom"
categories: Atom
---

Define a command to open the directory containing the active buffer's file in Terminal in your [`init.coffee`](https://atom.io/docs/v0.106.0/customizing-atom#initcoffee).

[Open in terminal · 21f8fd7 · robenkleene/Dotfiles](https://github.com/robenkleene/Dotfiles/commit/21f8fd7499912ddf013e9c9cf3a2daf416d14599):

``` coffeescript
atom.workspaceView.command 'roben-kleene:open-in-terminal', ->
  editor = atom.workspace.activePaneItem
  filepath = editor.getBuffer().getPath()
  path = require('path')
  dirpath = path.dirname(filepath)
  exec = require('child_process').exec
  exec "open -a Terminal #{dirpath}"
```
