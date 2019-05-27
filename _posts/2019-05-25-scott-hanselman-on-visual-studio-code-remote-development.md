---
layout: link
title: "Scott Hanselman on Visual Studio Code Remote Development"
categories: iOS Development
---

Scott Hanselman [on the advantages of Visual Studio Code Remote Development](https://www.hanselman.com/blog/VisualStudioCodeRemoteDevelopmentMayChangeEverything.aspx):

> On the Windows side, lots of folks creating Windows VMs in someone's cloud and then they RDP (Remote Desktop) into that machine and push pixels around, letting the VM do all the work while you remote the screen. On the Linux side, lots of folks create Linux VMs or containers and then SSH into them with their favorite terminal, run vim and tmux or whatever, and then they push text around, letting the VM do all the work while you remote the screen. In both these scenarios you're not really client/server, you're terminal/server or thin client/server. VS Code is a thick client with clean, clear interfaces to language services that have location transparency.

I really hope that Apple has something special waiting in the wings to do remote development from an iPad. I'm even starting to wonder if this is actually a better approach than granting full access to Unix locally on iOS. Is it even technically possible to provide this access while preventing [sideloading](https://en.wikipedia.org/wiki/Sideloading)? And even if Apple were to allow sideloading, would it be possible to prevent sideloaded apps from always [running in the background](https://developer.apple.com/documentation/uikit/core_app/managing_your_app_s_life_cycle/preparing_your_app_to_run_in_the_background)? What would that do to battery life? In any event, it certainly complicates the model.

A lot of the frustration with Apple right now is because with iPhone and iPad, we have [inspired hardware](https://www.apple.com/ipad-pro/) but limited software, while with the Mac, we have powerful software and [broken hardware](https://www.apple.com/support/keyboard-service-program-for-mac-notebooks/). But another way to look at it is that maybe the limited software is what makes inspired hardware possible.
