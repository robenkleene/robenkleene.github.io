---
layout: post
title: "The Era of Visual Studio Code"
image: /assets/2020-09-20-vs-code-hero.png
categories: Visual-Studio-Code, Text-Editor, Development
---

![VS Code Hero](/assets/2020-09-20-vs-code-hero.png)

The most important thing I look for when choosing which tools to use is longevity. Learning software is an investment, and if you have to switch to another application later, you lose some of that investment.

In most software categories, choosing the software with longevity is easy, the most popular tools [are usually the ones that have been around the longest](https://blog.robenkleene.com/2020/04/27/software-to-die-for/). [Microsoft Excel](https://www.microsoft.com/en-us/microsoft-365/excel) and [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) were both released in 1987 and, for the most part, they've remained the most popular software in their categories since then.

Text editors, on the other hand, are a software category where the most popular options are not the oldest. According to the [Stack Overflow Annual Developer Survey](https://insights.stackoverflow.com/survey/), [Sublime Text](https://www.sublimetext.com/) was the most popular text editor available on the Mac from 2015--2017. Sublime Text was released in 2008, a sprightly youth compared to Excel and Illustrator. Text editors have been a category with a lot of movement: In the last 20 years, TextMate, Sublime Text, and Atom have all been the text editor with the most momentum[^whytexteditorshavechurn]. For big complicated desktop software, has any other category ever had so much movement?

I believe the era of new text editors emerging and quickly becoming popular has now ended with [Visual Studio Code](https://code.visualstudio.com/). VS Code has reached unprecedented levels of popularity and refinement, laying a foundation that could mean decades of market dominance. If, like me, one of your priorities for your tools is longevity[^whynotemacsandvim], then that means VS Code might be a great text editor to invest in learning today.

The case for VS Code's longevity comes from several points we'll cover in this piece:

1. [**Popularity**](#popularity): It's crossed a popularity threshold that no earlier text editor in recent history has crossed.
2. [**The Text Editor as Platform**](#the-text-editor-as-platform): It's the endgame of a revolution that saw text editors be remade around extensions.
3. [**Paradigm Transcendence**](paradigm-transcendence): It's transcended its paradigm as a desktop app by becoming a hosted web app, and even a reference implementation.
4. [**Company Management**](company-management): It's managed by a powerful tech company, and it's being developed *aggressively*.

## Popularity

VS Code is the most popular text editor today. It's so popular, that it could be the most popular [GUI](https://en.wikipedia.org/wiki/Graphical_user_interface) programming tool of all time. [Since 2015](https://insights.stackoverflow.com/survey/2015#tech-editor), Stack Overflow has included questions about text editors in their survey[^stackoverflowremovedthetexteditorquestions]. Back then [Notepad++](https://notepad-plus-plus.org/) was the most popular text editor, with 34.7% of respondents saying they were "likely to use it". In the following years, the popularities of different text editors moved around a bit, but nothing ever broke the 40% mark. That is, until its [most recent poll in 2019](https://insights.stackoverflow.com/survey/2019#development-environments-and-tools), when VS Code jumped to 50.7%. This was the second year in a row that VS Code increased by ~45%, this time jumping from [34.9% in 2018](https://insights.stackoverflow.com/survey/2019#development-environments-and-tools), where *it had already been the most popular*.

### Text Editor Popularity 2015--2019

![Text Editor Popularity](/assets/2020-09-20-text-editor-popularity.png)

(Note that Stackoverflow started allowing multiple answers between 2015 and 2016, so I'd take the changes between those two years in particular with a grain of salt.)

## The Text Editor as Platform

So VS Code is objectively wildly popular; the next point we're going to look at is more qualitative. For the past couple of decades, text editors have been on a trajectory that I believe VS Code is the final representation of. This is the progression of text editors becoming platforms in their own right by increasing the role and capabilities of extensions. What follows is the history of this progression[^texteditorprogessionpreviously].

### Pre-2004: BBEdit, Emacs, and Vim

[BBEdit](https://www.barebones.com/products/bbedit/index.html), [Emacs](https://www.gnu.org/software/emacs/), and [Vim](https://www.vim.org/) are all great text editors in their own right, but they all have idiosyncrasies that (while beloved by people like me) prevent them from ever being the *most popular* text editor.

Emacs, and Vim's predecessor Vi, were both first released in 1976, before many of todays user-interface conventions were solidified. Predating conventions like using a modifier key with `Z`, `X`, `C`, and `V` for undo, cut, copy, and paste (keyboard shortcuts that were popularized by the [original Macintosh](https://en.wikipedia.org/wiki/Macintosh#1978%E2%80%9384:_Development_and_introduction) and [Windows 1.0](https://en.wikipedia.org/wiki/Windows_1.0), released in 1984 and 1985 respectively). Neither Emacs[^cuamodeinemacs] or Vim use these keys, and instead use their own terminology. They both use the term "yank" for example (although to mean different things, it's copy in Vim, and paste in Emacs).

BBEdit was released in 1992, around the time that some of the first GUI tools emerged that would become dynasties. Note the proximity to Excel (1987), Illustrator (1987), and Photoshop (1990). And just like those apps, BBEdit is still relevant today. But unlike those apps, it's not the most popular in its category, by a wide margin. The reason seems to be at least partially that it never fully adapted to a world where text editors put so much emphasis on package-driven ecosystems.

### 2004: TextMate

TextMate, released in 2004, is arguably the most influential text editor ever. Among the numerous features it popularized are [abbreviation-based snippets](https://macromates.com/manual/en/snippets), [automatic paired characters](https://macromates.com/manual/en/working_with_text#auto-paired_characters_quotes_etc), and [fuzzy finding by file name](https://macromates.com/manual/en/working_with_multiple_files#moving_between_files_with_grace). All of these features became staples in every popular text editor that followed. The implementations of [Scope Selectors](https://macromates.com/manual/en/scope_selectors) and [theming](https://macromates.com/manual/en/themes) that TextMate pioneered have also formed the basis for themes and syntax highlighting in every subsequent popular text editor.

That's already a lot to originate from a single app, but it still doesn't even include TextMate's most significant innovation; the one that would go on to re-shape text editors, solidify niche status for every text editor that came before it, and pave the way for VS Code to become the most popular text editor in history a decade later. TextMate's most important innovation was that it was the first popular text editor that was primarily built around [extensions](https://en.wikipedia.org/wiki/Plug-in_%28computing%29).

While TextMate popularized the concept of a text editor built around extensions, in hindsight, it didn't go far enough. TextMate's extensions had limitations that later text editors would thrive by removing.

### 2008: Sublime Text

[Sublime Text](https://www.sublimetext.com/), released in 2008, popularized the minimap and multiple cursors. And unlike TextMate and BBEdit, it's cross-platform, running on Linux, MacOS, and Windows, which helped it reach a wider audience than those editors. But Sublime Text's biggest impact was greatly expanding the capabilities of extensions.

Sublime Text's extensions run in an embedded [Python](https://en.wikipedia.org/wiki/Python_(programming_language)) runtime with an [extensive API](https://www.sublimetext.com/docs/3/api_reference.html), unlike TextMate which [uses the scripting languages built-in to macOS](https://github.com/textmate/bundle-support.tmbundle/blob/13169c6209ebb02564009c4ce573d62452c9b3ae/Support/shared/bin/ruby18), and [rather than having a proper extension API](https://macromates.com/manual/en/appendix#plug-in_api), mainly centers on processing [standard out](https://en.wikipedia.org/wiki/Standard_streams).

Sublime Text greatly expanded what extensions could do, allowing more sophisticated integrations such as [linters](https://en.wikipedia.org/wiki/Lint_(software)) that included GUI components. And [Package Control](https://packagecontrol.io/news), the enormously popular package manager for Sublime Text built by [Will Bond](https://twitter.com/wbond/)[^sublimehqhire], features a centralized source for package management, reducing the friction to browse, install, and update packages; a model that all subsequent popular text editors would also adopt.

Even with Sublime Text's expanded extensions, it still didn't go far enough. Package Control wasn't built-in, and, while Sublime Text does have an API, its use of Python with custom calls for GUI components still left room for future text editors to make extensions more accessible to build.

### 2014: Atom

[Atom](https://atom.io/), released by [GitHub](https://github.com/) in 2014, finally brings extensions to their final form. Atom's package manager is built in[^textmate2hasabuiltinbundlebrowser], displays extension [READMEs](https://en.wikipedia.org/wiki/README) complete with inline images (and early extensions made by GitHub themselves popularized the convention of using [animated GIFs](https://en.wikipedia.org/wiki/GIF) to illustrate functionality), creating an extension experience reminiscent of an [app store](https://www.apple.com/ios/app-store/).

Then there's the matter of [HTML](https://en.wikipedia.org/wiki/HTML) and [CSS](https://en.wikipedia.org/wiki/Cascading_Style_Sheets). Atom is built on [Electron](https://www.electronjs.org/)[^electronwasmadeforatom], which means the editor itself is written in JavaScript and runs on [Node](https://en.wikipedia.org/wiki/Node.js)[^atomwaswrittenincoffeescript]. Compared to Sublime Text's Python API; HTML, CSS, and JavaScript are some of most widely-known languages in existence, which greatly lowers the barrier of entry for creating extensions.

Atom had essentially perfected the extension-based editor, there was just one problem: It's slow. Performance complaints have plagued Atom since its release, and market ended up split with Sublime Text, which is lightning fast by comparison.

### 2015: Visual Studio Code

VS Code was released in 2015, based on the [Monaco Editor](https://microsoft.github.io/monaco-editor/) that Microsoft had [first released in 2013](https://weblogs.asp.net/jongalloway/a-quick-look-at-the-new-visual-studio-online-quot-monaco-quot-code-editor) that could be embedded into websites. When GitHub released Electron along with Atom. Microsoft used it to create a desktop version of the Monaco Editor called Visual Studio Code.

VS Code takes the same formula as Atom[^vscodeislesshackable]---a local web-based text editor written in Electron with an emphasis on extensions---and makes it more performant. VS Code makes extensions even more visible, by putting them in the sidebar, raising to the same level as file browsing, searching, source control, and debugging. VS Code extensions can have rich user-interfaces, being written in HTML, CSS, and JavaScript, and with full-access to [Node](https://nodejs.org/en/), they can essentially do anything any other application can do. And indeed, [some](https://marketplace.visualstudio.com/items?itemName=GrapeCity.gc-excelviewer) [extensions](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio) start to look like apps in and of themselves.

With VS Code, the extension-based text editor has seemingly reached its final form. Ever since TextMate, extensions have increased in prominence and capabilities, and with VS Code, that progression appears to have culminated. There just isn't anywhere else to go. Correspondingly, there isn't a way a new text editor can leapfrog VS Code the same way previous text editors have been leapfrogging each other by improving extensions.

## Paradigm Transcendence

So far we've looked at VS Code's popularity, and its extensions implementation, as indicators of longevity. The third indicator we'll look at is how VS Code has moved beyond the confines of the desktop. The [`code-server`](https://github.com/cdr/code-server) project runs VS Code as a regular web app, in other words, hosted on a server and accessed through the browser. GitHub's [Codespaces](https://github.com/features/codespaces/) also run VS Code as a web app, this time by spinning up an ad hoc development environment.

Transcending a paradigm, like going from a desktop app to a web app, is a great indicator of longevity. For one, it means it's more likely to be ported to more paradigms in the future. It takes herculean effort to port to a new paradigm, and expending that effort is a great indicator of value. Emacs and Vim were both ported from the terminal to GUI applications; they were too valuable not to have GUI versions. Photoshop and Excel both run on mobile[^vscodeonmobile], and [Illustrator is coming soon](https://www.adobe.com/products/illustrator/ipad.html). Excel also has a web version[^webappsrunonmobile], and there's a [streaming version](https://edex.adobe.com/projectphotoshopstreaming) of Photoshop (although it's been in closed beta for six years).

Not only has VS Code transcended the parameters of its initial implementation by becoming a web app, it's also became something of a standard. Version 1.0 of the [Theia](https://theia-ide.org/) IDE maintained by the [Eclipse Foundation](https://www.eclipse.org/) is a re-implementation of VS Code. VS Code is now not only a text editor, but also a model of how a text editor should behave.

## Company Management

TextMate is largely the work of one developer, [Allan Odgaard](https://twitter.com/sorbits?lang=en), the same with Sublime Text and Jon Skinner. Both of these applications eventually ran into trouble with frustrated users for perceived slow release schedules.

Here's the history of major releases for these two applications:

- [2004](https://macromates.com/blog/2004/hello-world/): TextMate 1
- [2008](http://www.sublimetext.com/blog/articles/one-point-oh): Sublime Text 1
- [2011](https://www.sublimetext.com/blog/articles/sublime-text-2-public-alpha): Sublime Text 2 Alpha
- [2012](https://www.sublimetext.com/blog/articles/sublime-text-2-0-released): Sublime Text 2
- [2012](https://macromates.com/blog/2012/textmate-2-at-github/): TextMate 2 Alpha
- [2013](https://www.sublimetext.com/blog/articles/sublime-text-3-beta): Sublime Text 3 Beta
- [2017](http://www.sublimetext.com/blog/articles/sublime-text-3-point-0): Sublime Text 3
- [2019](https://github.com/textmate/textmate/blob/master/Applications/TextMate/about/Changes.md#2019-09-15-v20): TextMate 2

Here's a graph of the number of years between stable major releases (contrasted with the release dates for BBEdit 10--13 for comparison):

![Text Editor Release Schedule](/assets/2020-09-20-text-editor-release-schedule.png)

A couple things jump out from this graph immediately:

1. TextMate 2 took a long time.
2. Sublime Text has been consistent with their release schedule.

The complaints about Sublime Text seem to center around the gap between the Sublime Text 3 Beta being announced in 2013 and released in 2017, and a perceived lack of sufficient changes during that period. Sublime Text's release schedule is slow when compared to BBEdit's which has released three major versions ([11](https://www.barebones.com/company/press/bbedit11_pr.html), [12](https://www.barebones.com/company/press/bbedit12_pr.html), and [13](https://www.barebones.com/company/press/bbedit13_pr.html)), while Sublime Text 3 has been in beta. Although [Coda 2](https://panic.com/coda/) was released in 2012, and hasn't been updated since, so it's unclear whether Sublime Text's release schedule is really an anomaly for a commercial text editor.

The current version of VS Code is [`1.49`](https://code.visualstudio.com/updates/v1_49), but VS Code is open source, so it plays by different rules than commercial apps. Major versions exist at least partially as an opportunity for companies to charge for upgrades. 

Since VS Code is developed out in the open, we can evaluate its pace of development directly by reviewing its commit history. VS Code's commit graph on GitHub tells a story of aggressive development, out pacing Atom, and even other large open source project like Facebook's [React](https://reactjs.org/) (note that these graphs have different scales on the Y-axis).

### Visual Studio Code Commit Graph

[![Visual Studio Code Commit Graph](/assets/2020-09-20-commit-graph-visual-studio-code.png)](/assets/2020-09-20-commit-graph-visual-studio-code.png)

### Atom Commit Graph

[![Atom Commit Graph](/assets/2020-09-20-commit-graph-atom.png)](/assets/2020-09-20-commit-graph-atom.png)

### React Commit Graph

[![React Commit Graph](/assets/2020-09-20-commit-graph-react.png)](/assets/2020-09-20-commit-graph-react.png)

Aggressive development pulls platforms away from the pack because the combination of forward momentum, and third parties building on the platform, is difficult to compete with[^innovationcomesfromneglect]. This is the same combination that makes it so hard for new entrants to compete with popular browsers or OSes.

## Conclusion

The goal of this piece is to determine if VS Code is a good investment in learning if you value longevity. An implication of [the Text Editor as Platform](#visual-studio-code-commit-graph), is that since TextMate's introduction in 2004, every few years the text editor with the most momentum has changed. These would be short reigns by any standard, but they're positively miniscule compared to apps like Excel and Photoshop. Learning a new text editor is a questionable investment if you expect something new to come along every few years.

VS Code is giving indications that the era of short reigns for text editors is over. It has the potential to maintain its position as the most popular text editor for a much longer time, possibly for decades, if we use examples of popular software in other categories as a guides. As we've outlined in this piece, the case for this is following:

1. It's crossed a [popularity](#popularity) threshold that's eluded other text editors by being used by over 50% of developers.
2. It's the final form of progression towards [maximizing the power and visibility of extensions](#the-text-editor-as-platform), making it immune to being leapfrogged by a new text editor with a more capable extension model.
3. It's [moved beyond its origins as a desktop app](#pre-2004-bbedit-emacs-and-vim), it's also a web app, and it's even become a model of how a text editor should behave.
4. It's [managed by a company](#company-management), so it's unlikely to run into the development stagnation that's plagued other text editors.

Before VS Code, I expected to never learn another general-purpose text editor that wasn't Emacs or Vim again, it was just too risky. I've found a good way to make predictions is to assume things will stay the same; with text editors, that means expecting a new text editor will emerge every few years that gains most of the momentum. Expecting anything else to happen requires extraordinary evidence.

I believe VS Code has presented extraordinary evidence. I'm hoping it moves into the category with apps like Excel, Illustrator, Photoshop, software that has held the most popular position in its category for decades. These applications are reliably time investments that repay their cost of learning over the course of a career. Emacs and Vim have always been like that, but it's always good to have more choice.

* * *

[^whytexteditorshavechurn]: If you think about it, the fact that the most popular text editor is newer than popular software in other categories is pretty strange, since text editing predates almost every other computer task. I think there are a couple of reasons for this. The first is that, on a technical level, writing a text editor is easier than other categories. While I don't want to downplay the difficulty, text files are the lingua franca of computers, and nearly every major software development framework has at least some built-in support for them. Modern hardware also gives you a lot of performance headroom to develop a text editor that you don't have if you're developing, say, a video editor.

    The second reason is that it's easier for users to switch text editors. While learning new complex software packages is always difficult, at least with text editors you can just open your existing projects with a new one and start editing them, since development projects are just made up of plain text files. There's almost no other software category where this is true, most applications use a proprietary formats that only their application can read. Another reason text editors tend to be easier to pick up is that it's usually, [but not always](https://www.vim.org/), easy to figure out the basics: How to enter and edit text. The basics are usually easier to figure out than, say, Adobe Illustrator, which is almost impossible to use without reading the manual.

    These factors combine to make text editors a particularly competitive market, and competition is effective in driving innovation. For my money, it's made text editors the best software there is: They have the best balance of form and function of any software category. The closest competition are browsers and terminals, which also combine power and flexibility into an elegant package, but I give the edge to text editors, because browsers and terminals achieve their power by simply wrapping powerful concepts, [a protocol](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol) and [standard streams](https://en.wikipedia.org/wiki/Standard_streams) respectively. With text editors in contrast, the user interface is the application in a way that just isn't true for those other types of applications. (This is also why browsers and terminals all feel roughly the same, while text editors are wonderfully diverse.)

[^whynotemacsandvim]: If longevity is my priority, then why not use [Emacs](https://www.gnu.org/software/emacs/) or [Vim](https://www.vim.org/)? For Vim, the answer is easy, I do already use it. But I don't like writing prose Vim's modal editing model, so I started seeking out a non-modal editor to complement Vim.

    I've also [spent a fair amount of time with Emacs](https://github.com/robenkleene/Dotfiles/tree/master/emacs.d), but it started crashing for me with an issue similar to [this one](https://emacs.stackexchange.com/questions/54951/emacs-26-3-crash-on-network-process-interaction-on-macos). The author of that post solved their problem by compiling Emacs locally to run it in [`lldb`](https://lldb.llvm.org/), which is farther than I was willing to go to solve my problem.

    Emacs has a difficult balancing act to walk: It's incredibly customizable, but it's also fragmented. For the Mac, there are [several](https://github.com/railwaycat/homebrew-emacsmacport) [popular](https://aquamacs.org/) [ports](https://emacsformacosx.com/). And, macOS isn't a high-priority platform for Emacs. There's a history of [blocking macOS-only features from Emacs](https://lists.gnu.org/archive/html/emacs-devel/2015-12/msg01572.html), as well as [removing features that are already working](https://lunaryorn.com/blog/bye-bye-emojis-emacs-hates-macos/). All-in-all this makes Emacs a hard sell on macOS. Customizability and fragmentation aren't a great combination to begin with, because customizations will often work in one version and not another. But when combined with relatively low market-share ([4.5% in 2019](https://insights.stackoverflow.com/survey/2019#development-environments-and-tools)), and being on a platform that's a second-class citizen relative to GNU/Linux, it's hard to recommend, despite its strong points.

[^stackoverflowremovedthetexteditorquestions]: For some reason Stack Overflow removed the questions about developer tools like text editors for the [2020 survey](https://insights.stackoverflow.com/survey/2020) unfortunately.

[^texteditorprogessionpreviously]: The progression of text editors becoming a platform is adapted from a [previous post](https://blog.robenkleene.com/2020/04/13/is-visual-studio-code-irreplaceable/), which is in turn adapted from a [Twitter thread](https://twitter.com/robenkleene/status/1228353731663671297).

[^cuamodeinemacs]: Emacs does include [`cua-mode`](https://www.gnu.org/software/emacs/manual/html_node/emacs/CUA-Bindings.html), which when turned on, defines `C-x`, `C-c`, `C-v`, and `C-z` as "cut (kill), copy, paste (yank), and undo respectively". (The name `cua-mode`, is a bit of a misnomer because [IBM Common User Access](https://en.wikipedia.org/wiki/IBM_Common_User_Access) never used these key bindings.)

[^sublimehqhire]: Will Bond was [hired by Sublime HQ in 2016](https://www.sublimetext.com/blog/articles/sublime-text-3-build-3103).

[^textmate2hasabuiltinbundlebrowser]: [TextMate 2](https://macromates.com/), released in December 2011, also had the first [built-in extension browser](https://macromates.com/blog/2011/locating-bundles/) in a popular text editor.

[^electronwasmadeforatom]: Electron was originally called ["Atom Shell"](https://www.electronjs.org/blog/electron).

[^atomwaswrittenincoffeescript]: Atom was originally written in [CoffeeScript](https://coffeescript.org/).

[^vscodeislesshackable]: VS Code is less "hackable" than other text editors. For example, it doesn't have an "init" file in the tradition of [`.emacs.d`](https://www.emacswiki.org/emacs/DotEmacsDotD) and [.vimrc](https://vim.fandom.com/wiki/Open_vimrc_file) ([Atom does have one](https://flight-manual.atom.io/hacking-atom/sections/the-init-file/)). This makes VS Code harder to customize, since the only way to do it is to create an extension.

[^vscodeonmobile]: Presumably, VS Code would already exist on iOS were it technically feasible to do so, since it's open source and so popular. It makes an interesting case study for the future of iPadOS as a platform. Because, if it's not technically possible to port VS Code to iPadOS, then, as VS Code becomes ubiquitous, that increasingly becomes synonymous with iPadOS not supporting programming at all.

    The point is probably moot, because an iOS native version of VS Code would probably work with the same client-server model described in [Paradigm Transcendence](#paradigm-transcendence). But it's still an interesting thought experiment, because I often see the prediction that iPadOS will [disrupt] the industry from the bottom(https://en.wikipedia.org/wiki/Disruptive_innovation). I wonder how can that happen if a platform puts up so many technical barriers for creating a text editor?

[^webappsrunonmobile]: Another nice thing about having a web version is that web apps don't have to abide by the [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/), so applications prohibited by Apple can still exist on the platform.

[^innovationcomesfromneglect]: [As I'm fond of saying](https://twitter.com/robenkleene/status/1122087289402941440), if you're looking for areas that will be disrupted by new technology, [look for *areas of neglect*](https://blog.robenkleene.com/2019/04/20/the-deal-that-made-the-iphone/).

