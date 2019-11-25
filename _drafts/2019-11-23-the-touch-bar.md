---
layout: post
title: "The Touch Bar"
categories: macOS, MacBook, Desktop
---

The [new 16" MacBook Pro](https://www.apple.com/newsroom/2019/11/apple-introduces-16-inch-macbook-pro-the-worlds-best-pro-notebook/) still has a Touch Bar, but it now has a physical Esc key. I think this will quell most of the complaints about the Touch Bar, the touch Esc button was a particularly lousy replacement for a couple of reasons:

1. Esc is a commonly used key, especially for dismissing dialogs.
2. As a physical key, Esc is easy to type without looking because it's in the upper left corner.

The remaining keys in the function row are also commonly used, but they were never easy to type without looking: Brightness, Mission Control, Launchpad, rewind, play/pause, fast forward, mute, and volume. For those keys the Touch Bar feels like a wash: The physical keys were slightly easier to type, but the Touch Bar is significantly cooler. So with the physical Esc key, I suspect the complaints will die down, but why wasn't the Touch Bar more successful?

## Buttons

[Function keys](https://en.wikipedia.org/wiki/Function_key)  have their proponents, but in general they're rarely used on the Mac. They're used much more on Windows because, unlike the macOS [command key](https://en.wikipedia.org/wiki/Command_key), the [Windows key](https://en.wikipedia.org/wiki/Windows_key) isn't a modifier[^commandpromptcopyandpaste]. As a result, application shortcuts and user-defined shortcuts[^functionkeysinexcel] often end up in the function row. But function keys seem just plain worse than modifier-based keyboard shortcuts: They aren't mnemonic and, they're far enough from the home row that they're difficult to type without looking[^dedicatedfunctionkeys].

The Touch Bar is unfortunately usually just used to add buttons, which effectively means it's used as function keys, but with visual indication of each buttons purpose. Here the Touch Bar ends up stuck between the mouse and the keyboard, if you know the modifier-based keyboard shortcut, than that's going to be easier to type without looking, and, if you don't, using the mouse to click something is going to be easier because you're already looking at the screen.

## Ranges

An ideal use case for the Touch Bar would appear to be selecting from a range of values. Choosing exactly the right color for example, or adjusting the sliders in [Lightroom Classic's Develop module](https://helpx.adobe.com/lightroom-classic/help/applying-adjustments-develop-module-basic.html). Here the keyboard is clearly deficient, the keys have to move the value by a fixed increment, which could be much larger or smaller than the size of the intended change. The mouse fairs much better, but it's still not a great fit because the mouse works best when you know in advance exactly what you want to click on, it doesn't work as well when you want to start [warming an image up](https://en.wikipedia.org/wiki/Color_temperature) and then stop when it looks just right[^holdingthemousebuttondown]. The proliferation of custom controllers with knobs and faders for [audio](http://faderfox.de/), [photo](https://loupedeck.com/en), and [video](https://monogramcc.com/) editing speaks to a need that isn't being met by the keyboard and mouse.

Unfortunately, the Touch Bar isn't a great fit for this use case either. Touch just has lousy fidelity, it's difficult to use it select a precise value, and the Touch Bar's minimal screen real estate exasperates the problem. The Touch Bar ends up being worse than the mouse and keyboard used as a pair: The mouse to get close, and then fine-grained adjustments with the keyboard.

## Desktop

The last issue with the Touch Bar is that it isn't on the desktop. This conflicts with the essence of what a laptop is: A desktop that you can take with you. Contrast this with an iPad, which is a truly mobile device. The applications we run on a laptop are not designed to preserve battery, handle intermittent internet, and startup quickly like mobile apps are. And the touch form factor itself trades the accuracy and ergonomics of the keyboard and mouse for being easier to use quickly with touch.

The Touch Bar doesn't work with an iMac, or with an external keyboard, or when the laptop is in clamshell mode. It doesn't work with desktop workflows. Selecting a value from a range comes up often in creative apps, and while the keyboard and mouse do come out on top for those adjustments, it is still one of best use cases for touch. But audio, photo, and video editing are desktop tasks that take advantage of desktop workflows, the people doing these tasks often use external peripherals that makes the Touch Bar inaccessible[^sidecaristouchbarfordesktop].

## Conclusion

In summary, the Touch Bar's problems are:

1. The Touch Bar is usually used for touch buttons, but keyboard shortcuts are better than touch buttons because they're easier to type without looking.
2. When selecting values from a range, the Touch Bar is worse than the keyboard and mouse because touch has poor fidelity.
3. Even if the Touch Bar did have better fidelity for selecting values from a range, most of use cases for those types of edits are desktop workflows, and the Touch Bar isn't available on desktop.

Touch in general hasn't had the impact we all expected and hoped for. Its main advantage is that integrating the display and the input method is an efficient use of physical space, which is at a premium when computing on the go[^drawingisgreatonipad]. There have been some interesting attempts at using touch-based controls in creative fields. When iPad was first released, it seemed like something like [Lemur](https://en.wikipedia.org/wiki/Lemur_Input_Device)[^lemuriosapp] would gain traction in music production. But the software hasn't been very popular, and the app is rarely updated. Instead the industry has gravitated towards control surfaces with physical buttons and knobs, and that integrate with desktop software, like [Native Instruments' Maschine](https://www.native-instruments.com/en/products/maschine/production-systems/maschine/) and [Ableton Push](https://www.ableton.com/en/push/).

It's hard not to wonder what Apple themselves think are the advantages of the Touch Bar. My suspicion is that Apple, like a many of us, overestimated the promise of touch based on the success of the iPhone and iPad. But touch is a *mobile* technology. Outside of mobile, when space isn't at such a premium, the tactile benefits of physical controls are winning in every category.

* * *

[^commandpromptcopyandpaste]: That the Windows key not being a modifier causes [problems with copy and paste](https://duckduckgo.com/?q=copy+and+paste+windows+command+prompt) at the [Windows Command Prompt](https://en.wikipedia.org/wiki/Cmd.exe). Window standard copy and paste shortcuts, `⌃C` and `⌃V`, can't be used because those keys are used to send [signals](https://en.wikipedia.org/wiki/Signal_(IPC)) to the shell, most notably [control-C](https://en.wikipedia.org/wiki/Control-C) to abort the current task. The Mac sidesteps issue by using the command key for copy and paste.

[^functionkeysinexcel]: Many of the differences in [keyboard shortcuts between Excel for Mac and Windows](https://exceljet.net/keyboard-shortcuts) come from moving shortcuts out of the function row on Mac. Reliance on the functions on the Mac is a common tell for a cross-platform application that's primarily developed on Windows.

[^dedicatedfunctionkeys]: On a full-size keyboard with a dedicated function row (of which Apple hasn't made in over a decade), function keys do have one benefit over modifier-based shortcuts: They only require typing one key, they don't require also holding down a modifier.

[^holdingthemousebuttondown]: To use the mouse to select from a range of values, you can hold the mouse button down, and then drag until you've selected the correct value, but this a more strenuous way to use the mouse, and you lose fidelity when you finally release the mouse button.

[^sidecaristouchbarfordesktop]: [Sidecar](https://support.apple.com/en-us/HT210380) might be Apple's strategy for bringing the Touch Bar to the desktop. It shows a Touch Bar by default, and pairing it with [Apple Pencil](https://www.apple.com/apple-pencil/) to also serve as a precise input device is interesting.

[^drawingisgreatonipad]: [As I've written before](https://blog.robenkleene.com/#fnref:ipadisalsogreatforillustration), illustration is also a great use case for the integrated display and input method.

[^lemuriosapp]: Lemur is [available as an iOS app](https://liine.net/en/products/lemur/) from Liine.