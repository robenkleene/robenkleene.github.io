---
layout: post
title: "Introducing `rep` & `ren`: A New Approach to Command-Line Find & Replace, and Renaming"
categories: Unix, Rust
---

## How to Use `Rep`

1. Perform a search with a grep tool like [ripgrep](https://github.com/BurntSushi/ripgrep):

	![grep](/assets/2023-12-26-rep-1-grep.png)

2. Pipe the results of the search to `rep`, and provide search and replace terms as arguments:

	![diff](/assets/2023-12-26-rep-2-diff.png)

3. If the diff looks good, pass the `-w` flag to `rep` to write the changes to the files:

	![write](/assets/2023-12-26-rep-3-write.png)

## `rep` & `ren`

[`rep`](https://github.com/robenkleene/rep-grep) and [`ren`](https://github.com/robenkleene/ren-find) are two new tools for performing find and replace in files, and renaming files, respectively.

They share a similar design in two ways:

1. **Standard input determines what should be changed.** `rep` takes `grep`-formatted text via standard input to determine which lines to change, and `ren` takes a single file per line to determine which files to rename.
2. **A preview of the resulting diff is printed to standard output by default.**  By default, `rep` and `ren` both print a diff of the changes that would result by performing the find and replace or rename. In order to actually write the changes to disk, both have a `-w` / `--write` flag.

## Origin Story

Search is what pulled my editing towards the command line[^search_refinement]. It began with [`ack`](https://beyondgrep.com). `ack` is like [`grep`](https://en.wikipedia.org/wiki/Grep) but it automatically searches recursively and ignores version control directories (e.g., `.git/`). Just enter `ack foo` at your shell prompt and see all the results in your project. Today, I use [ripgrep](https://github.com/BurntSushi/ripgrep), an iteration on the same idea with with a beautifully organized set of command-line [flags](https://en.wikipedia.org/wiki/Command-line_interface#Command-line_option).

If you do a lot of searching from the command line, eventually you also want to do some editing there. After you've performed a search, and you have a list of matches you want to change, what now? For a long time, my answer was to [load the matches](https://github.com/robenkleene/Dotfiles/blob/490eee14ce0738fb3d95ae41d301167aa4f41822/vim/robenkleene/commands.vim#L44-L54) into the [`vim` quickfix list](https://vimhelp.org/quickfix.txt.html) and use [`vim` built-in support for operating on `grep` matches](http://vimcasts.org/episodes/project-wide-find-and-replace/) to perform the replacement.

Loading matching into an editor and performing the replacement there is a great approach, and it's ideal for more complex edits[^cdo_norm]. But there are times when I'd prefer skip the editor altogether. For one, if it's a quick edit, it's slower. I'd rather just type out my replacement on the command line without opening my editor[^editors_slow]. Then there's the matter of repeatability: I often do a sequence of several edits, then realize I made a mistake somewhere in the sequence, have to revert the replacement (e.g., with a `git checkout .`) and start over. If instead I do the edits from the command line, I can just find the replacement in my shell history, fix it there, and quickly re-run the steps in order.

### Why not `sed`?

`sed` is the definitive search and replace utility for the Unix command line, the problem is, it doesn't combine well with ripgrep. Here's the command from [an example of a popular answer on Stackoverflow](https://stackoverflow.com/questions/1583219/how-can-i-do-a-recursive-find-replace-of-a-string-with-awk-or-sed) about how you do a recursive find and replace with `sed`:

```
find /home/www \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/subdomainA\.example\.com/subdomainB.example.com/g'
```

You could adapt this to use `rg` instead of `find` by using the `-l` flag which only lists files with matches:

```
rg "subdomainA\.example\.com" -l -0 | xargs -0 sed -i 's/subdomainA\.example\.com/subdomainB.example.com/g'
```

The problem with this approach is that `sed` is then performing the search again from scratch on each file, and since `sed` and `rg` have different regular expression engines, the matches could be different (or the search could fail with a syntax error)[^sd_regex].

Only performing the replacement on matching lines also makes it easier to write the replacement, because the replacement can then leverage the filtering that's already been performed by the search. For example, if you were trying to do a find and replacement on function names that end in `foo`: To find the matching functions, you might including some of the syntax for the function signature (e.g., `rg -n 'function .*Foo.*\('` to match all the functions containing `Foo`), then once you have the matching lines, you can just pipe that to `rep Foo Bar` (omitting the function signature syntax) to perform the replacement (with `sed` the replacement would also need to include the function signature, because `sed` is going to search every line in the file).

These workflow improvements arise because the *semantic meaning* of the `sed` command means is to perform a find and replace on the matching *files*, whereas the `rep` command means do the replacement on the matching *lines*.

Another, equally problematic, issue with `sed` approach is it's hard to tell what the exactly the result of your find and replace will be. In other words, it's difficult to interpret the preview what will be done with `sed`. The `sed` interface is built around [standard streams](https://en.wikipedia.org/wiki/Standard_streams), as in it takes input either through standard input, or file parameters, and then writes the output directly to standard output, or edits the files in place with a flag. This means that to preview the replacement you'll just see the raw text of the entire contents of every file that your command will perform a replacement in. Which isn't practical to parse to understand if the replacement is correct.

## `rep` & `ren`

`rep` was written to solve these two problems. Semantically,  `rep` performs the replacement on matching lines, and the replacement is previewed in the form that we're used to reviewing to determine whether a change is correct: [A diff](https://en.wikipedia.org/wiki/Diff).

`ren` takes a similar approach but for file renaming. The output of `find` (or [`fd`](https://github.com/sharkdp/fd)) can be piped to `ren`, so a command looks like this: `find *foo* | ren foo bar`. `ren` also displays diff output by default, and writes the changes with `-w`.

## Acknowledgements

- The idea for `rep` was inspired by [`wgrep`](https://github.com/mhayashi1120/Emacs-wgrep) for Emacs, which allows editing of a `grep` results in a buffer, and writing those changes to the source files.
- The structure of the source code, and much of the functionality, was borrowed from [`sd`](https://github.com/chmln/sd),  `rep` and `ren` both started as forks of `sd`.
- The code for specifying a custom pager for both `rep` and `ren` came from the source code for [delta`](https://github.com/dandavison/delta).

* * *

[^sd_regex]: Using `rg` and with [`sd`](https://github.com/chmln/sd) instead of `sed` should resolve most discrepancies between regular expression engines, since they both use [the same Rust engine](https://github.com/rust-lang/regex).

[^search_refinement]: Search is all about refinement and the shell excels at refinement. Too many results? Hit the up arrow and make your search more specific. Still too many? Maybe you can just `cd` to a subfolder. Want to search across many projects? Just `cd` up a folder.

[^editors_slow]: The approach of loading files into a text editor and then using editor functionality to perform the find and replace is both slow because of the number of steps *and* slow because of the specific implementations of this functionality by the editor. For example, `:cdo` does a bunch of additional work around loading a buffer and setting it up for further editing that's superfluous to our goal of quickly performing a find and replace. Most engineers don't share my sensitivity to latency, but for me, who finds great beauty in efficiency, the slowness of using `:cdo` to perform a find and replace due to all the additional superfluous work it performs, is repugnant.

[^cdo_norm]: Combining `cdo` and [`:norm`](https://vimtricks.com/p/operate-on-every-line/#:~:text=Vim's%20%3Anorm%20command%20allows%20you,command%20on%20the%20entire%20file.) is a powerful combination to perform `vim` normal mode commands on each matching line.
