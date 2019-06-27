---
layout: link
title: "Brent Simmons on Scripting Languages Leaving macOS"
categories: Development, News, macOS
---

Per the [Xcode 11 Beta 2 release notes](https://developer.apple.com/documentation/xcode_release_notes/xcode_11_beta_2_release_notes?language=objc#3318284):

> Scripting language runtimes such as Python, Ruby, and Perl are included in macOS for compatibility with legacy software. In future versions of macOS, scripting language runtimes won’t be available by default, and may require you to install an additional package. If your software depends on scripting languages, it’s recommended that you bundle the runtime within the app. 

Brent Simmons is concerned that this will [impact new developers](https://inessential.com/2019/06/26/i_cant_help_but_picture_the_15_year_old_) just starting out:

> Are we going to ask that person to figure out how to install Ruby? If there are one-click installers out there, are we going to ask them to figure out which one is actually reputable and safe?

> Curiosity like this is one of the ways new developers are made. I worry that the less the Mac is tinkerable out-of-the-box, the fewer developers we’ll get.

> Or: we’ll only get certain kinds of developers — the ones of the right age and background who can go get a CS degree.

These are all great points. I have mixed feelings about this, the counterargument is that most developers using these languages need to setup their own version and dependency management systems anyway. And it actually gets kind of confusing to also have the built-in versions. But I lean towards agreeing with Simmons, that it's more important to keep the barrier of entry to using these languages low.
