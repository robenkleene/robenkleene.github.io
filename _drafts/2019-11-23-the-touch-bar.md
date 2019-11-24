---
layout: post
title: "The Touch Bar"
categories: macOS, MacBook, Desktop
---

The [new 16" MacBook Pro](https://www.apple.com/newsroom/2019/11/apple-introduces-16-inch-macbook-pro-the-worlds-best-pro-notebook/) still has a Touch Bar, but it now has a physical Esc key. I think this will quell most of the complaints about the Touch Bar, the touch button made a particularly lousy Esc replacement for a couple reasons:

1. Esc is a commonly used key, especially for dismissing dialogs.
2. With a physical key, it's easy to type without looking at the keyboard because it's in the upper left corner.

The remaining keys in the function row are also commonly used, but they were never easy to type without looking: Brightness, Mission Control, Launchpad, rewind, play/pause, fast forward, mute, and volume. For those keys the Touch Bar feels like a wash: The physical keys were slightly easier to type, but the Touch Bar is significantly cooler. So with the physical Esc key, I suspect the complaints will die down, but that leaves the question of why isn't the Touch Bar a better replacement for the remaining keys?

## Buttons

[Function keys](https://en.wikipedia.org/wiki/Function_key)  have their proponents, but in general they're rarely used on the Mac. They're used much more on Windows because, unlike the macOS [command key](https://en.wikipedia.org/wiki/Command_key), the [Windows key](https://en.wikipedia.org/wiki/Windows_key) isn't a modifier[^commandpromptcopyandpaste]. As a result, application shortcuts and user-defined shortcuts[^functionkeysinexcel] often end up in the function row. But function keys seem just plain worse than modifier-based keyboard shortcuts: They aren't mnemonic and, they're far enough from the home row that they're difficult to type without looking[^dedicatedfunctionkeys].

The Touch Bar is unfortunately usually just used to add buttons, which effectively means it's used as function keys, but with visual indication of each buttons purpose. Here the Touch Bar ends up stuck between the mouse and the keyboard, if you know the modifier-based keyboard shortcut, than that's going to be easier to type without looking, and, if you don't, using the mouse to click something is going to be easier because you're already looking at the screen.

## Spectrums

An ideal use case for the Touch Bar would appear to be when selecting values from a spectrum. Choosing exactly the right color in a color picker for example, or adjusting the many sliders in [Lightroom Classic's Develop module](https://helpx.adobe.com/lightroom-classic/help/applying-adjustments-develop-module-basic.html). Here the keyboard clearly has problems since the keys have to move the value a fixed increment size, which is a poor fit when you're trying to make a much larger or smaller increment. The mouse fairs better, but it's still not a great fit because the mouse works best when you know what you want to click on in advance. It doesn't work as well when you want to [warm an image up](https://en.wikipedia.org/wiki/Color_temperature) and stop when it looks right. .

Unfortunately, the Touch Bar also fails in this use case, simply because touch has terrible fidelity, so It's always a poor fit when you're trying to choose a precise value. The Touch Bar's screen real estate is also tiny which exasperates the problem. The Touch Bar ends up behind the mouse and keyboard as a pair, which, while the [proliferation of custom controllers](https://petapixel.com/2019/01/26/using-a-midi-controller-with-lightroom-for-a-more-efficient-workflow/) is testament to their deficiencies, do end up working alright as a pair. Using the mouse to get close and doing fine adjustments with the keyboard.

## Desktop

The last issue with the Touch Bar is that it isn't on the desktop. This conflicts with the essence of what a laptop is, namely, a desktop computer that you can take with you. Contrast this with an iPad, which is a truly mobile device. The applications we run on a laptop are not designed to preserve battery, handle intermittent internet, and startup quickly like mobile apps are. And the touch form factor itself trades the keyboard and mouse's accuracy and ergonomics for being able to use the device in more physical positions with touch. But the Touch Bar doesn't work with an iMac, or with an external keyboard, or when the laptop is in clamshell mode. It doesn't work with desktop workflows.

Selecting a value from a spectrum comes up often in creative apps. Photo editing, video editing, and audio work all involve lots of fine-grained adjustments. While the keyboard and mouse come out on top for these adjustments, touch is an improvement over just a physical button. But those are desktop tasks that take advantage of desktop workflows, the people doing these tasks often use external peripherals that makes the Touch Bar inaccessible[^sidecaristouchbarfordesktop].

## Conclusion

In summary, the Touch Bar's problems are:

1. It's usually used to replace buttons, but keyboard shortcuts are better than buttons, because they're easier to use without looking down.
2. When selecting values from a spectrum, the Touch Bar is worse than the keyboard and mouse because of the poor fidelity of touch.
3. Even if the Touch Bar were good at making the fine-grained edits on a spectrum, many of use cases for making those types of edits are desktop-first workflows, and the Touch Bar isn't available on desktop.

So far touch seemingly hasn't been able to pickup any use cases outside of a single advantage: Integrating the display and the input method is an efficient use of physical space, which is at a premium when computing on the go[^drawingisgreatonipad]. There have been some interesting attempts at using touch-based controls in creative fields. When iPad was released, it seemed like the [Lemur](https://en.wikipedia.org/wiki/Lemur_Input_Device)[^lemuriosapp] would become popular in music production. But the software hasn't turned out to be very popular, instead that industry has gravitated to control surfaces with physical buttons and knobs like [Native Instruments' Maschine](https://www.native-instruments.com/en/products/maschine/production-systems/maschine/) and [Ableton Push](https://www.ableton.com/en/push/).

It's hard not to wonder what Apple themselves think is better about the Touch Bar than the physical buttons. My suspicion is that Apple, like a many of us, overestimated the promise of touch because of the astronomical sales of the iPhone, and early iPad sales. But touch is a *mobile* technology. It's benefits are mainly in consolidating the display and input method into a compact package. Outside of mobile where space is at a premium, the tactile benefits of touch are almost always trumped by more specialized dedicated controllers.

* * *

[^commandpromptcopyandpaste]: That the Windows key not being a modifier causes [problems with copy and paste](https://duckduckgo.com/?q=copy+and+paste+windows+command+prompt) at the [Windows Command Prompt](https://en.wikipedia.org/wiki/Cmd.exe). Window standard copy and paste shortcuts, `⌃C` and `⌃V`, can't be used because those keys are used to send [signals](https://en.wikipedia.org/wiki/Signal_(IPC)) to the shell, most notably [control-C](https://en.wikipedia.org/wiki/Control-C) to abort the current task. The Mac sidesteps issue by using the command key for copy and paste.

[^functionkeysinexcel]: Many of the differences in [keyboard shortcuts between Excel for Mac and Windows](https://exceljet.net/keyboard-shortcuts) come from moving shortcuts out of the function row on Mac. Reliance on the functions on the Mac is a common tell for a cross-platform application that's primarily developed on Windows.

[^dedicatedfunctionkeys]: On a full-size keyboard with dedicated a function row (of which Apple themselves haven't made in over a decade), function keys do have the advantage of only requiring single key to be pressed, without also having to hold down a modifier. 

[^touchbarliketoolbar]: Buttons that visually indicate their purpose is how on screen buttons that are accessed with the mouse work. This is probably the best way to think of buttons in the Touch Bar, as a way to quickly access a short list of actions like the [toolbar in macOS](https://developer.apple.com/design/human-interface-guidelines/macos/windows-and-views/toolbars/).

[^sidecaristouchbarfordesktop]: [Sidecar](https://support.apple.com/en-us/HT210380) might be Apple's strategy for bringing the Touch Bar to the desktop. It shows a Touch Bar by default, and pairing it with [Apple Pencil](https://www.apple.com/apple-pencil/) to also serve as a precise input device is interesting.

[^drawingisgreatonipad]: [As I've written before](https://blog.robenkleene.com/#fnref:ipadisalsogreatforillustration), illustration is also a great use case for the integrated display and input method.

[^lemuriosapp]: Lemur is [available as an iOS app](https://liine.net/en/products/lemur/) from Liine.