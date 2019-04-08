---
layout: post
title: "The Preference That Ruined Spaces"
categories: macOS, Productivity
---

In his post on [Spaces in 10.5.3](https://daringfireball.net/2008/05/spaces), Gruber discusses his ideal [Spaces](https://en.wikipedia.org/wiki/Spaces_(software)) workflow:

> Take, for example, the task of writing this article. What I want to be able to do with Spaces is dedicate one space solely to the task. I want Safari windows pertaining to any web pages related to the article, and MarsEdit and BBEdit windows for the article itself. But I don’t want all open Safari, MarsEdit, and BBEdit windows in this space — I only want those pertaining to the article. There was simply no way to make this work in 10.5.0 through 10.5.2; you could get the windows grouped this way, but you’d keep getting switched to another space when what you wanted to do was switch to another app within the current space. Spaces really only seemed suited to putting all of any given app’s windows in a particular space (or making all an app’s windows visible in all spaces). This isn’t to say Spaces wasn’t usable, only that it wasn’t usable for grouping a few windows from different apps together in one Space.

10.5.3 is the version that introduced the all-important “When switching to an application, switch to a space with open windows for the application” option[^defaults]. I contend that this option should have always been disabled by default, i.e., Spaces *never* should have automatically switched spaces when switching  applications---and not having that be the default behavior ruined Spaces.

The problem with automatically switching to the space for an application is that that is application-level window organization, but OS X *already had great application-level window organization*. "Command-Tab", Exposé, Dock icons, application hiding (`⌘H`), and Spotlight, are all already great ways to switch between applications.

Literally, the *entire value add* of Spaces is that it is the *only way* to organize application windows *besides by application*. And since the only sensical behavior for Spaces was hidden behind a user preference, it meant a whole bunch of essential refinements that would make a truly great Spaces experience would never be prioritize for non-default behavior. For example:

1. Applications have a default behavior when there are no windows. E.g., a text editor or the Finder will automatically pop-up a new window. But this won't work when an application has windows *on another space*. This is clearly incorrect, the application should use the no window behavior if there are no windows *on this space*.
2. Similarly, many applications will try to re-use an existing window. For example, if you open your "Documents" folder in the Finder via Spotlight, then switch to another space and do the same thing, no window will open the second time. The Finder tried to re-use the existing "Documents" window *but it's on a different space*). Instead, obviously a new "Documents" window should be opened *on this space*.

Implementing those two changes is, in all likelihood, far more difficult than it sounds, and frankly, the difficulty in making these changes is probably why the default behavior is what it is. The true lesson here is probably just how difficult it is to add something new on top of an already existing system.

* * *

[^defaults]: Similar behavior had previously existed with a hidden preference: `defaults write com.apple.Dock workspaces-auto-swoosh -bool NO`.