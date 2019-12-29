---
layout: link
title: "'The Quiet Majority of Developers'"
categories: Professional, Creative
---

[Joel Spolsky](https://twitter.com/spolsky) [recently wrote about what he's been up to](https://www.joelonsoftware.com/2019/12/05/so-hows-that-retirement-thing-going-anyway/). This part about [Glitch](https://glitch.com/) jumped out at me:

> I think that in every era there has to be some kind of simplified programming environment for the quiet majority of developers who don’t need fancy administration features for their code, like git branches or multistep deployment processes; they just want to write code and have it run. Glitch is aimed at those developers.

This question about what is the right amount of complexity for creative software runs as a thread through a lot of my writing. It's important to the rise of [Sketch and Figma](https://blog.robenkleene.com/2019/04/02/sketch-figmas-market-share/), it's relevant to any [discussion about app stores](https://blog.robenkleene.com/2019/08/07/apples-app-stores-have-failed-creative-apps/), and it's at the heart of the debate over the [roles of macOS and iOS](https://blog.robenkleene.com/2019/11/13/editing-podcasts-on-ipad-vs-mac/).

Advocates of simpler creative software usually brush off the fact that a whole bunch of peripheral technology would need to be re-written to support their vision, usually by saying that that stuff wasn't written right anyway. Spolsky takes a more measured approach, which I appreciate, by instead saying most people don't need those features[^versioncontrolisaboutcollaboration].

Glitch is far from the only product that simplifies software by making it impossible to do complex things. Apple themselves are advocates of this approach, GarageBand and iMovie being prime examples; and the entire design of iOS is based on the premise that software, and especially operating systems, are too complicated[^simpledrivesmeupthewall]. But it's difficult to determine how popular these simpler versions of apps are relative to their more complicated counterparts. On the Mac App Store, Final Cut Pro and iMovie are the #1 paid and free apps in the video category respectively. In music, it's Logic Pro X and GarageBand. Logic Pro X is the most popular paid app overall in the Mac App Store, and iMovie is the most popular free app. While this does indicate that both approaches are popular, it comes with the caveat that the free apps are subsidized by other parts of Apple's business[^everythingissubsidized].

The professional offerings like Final Cut Pro and Logic Pro X show up much more online: Their forums are more active, they get reviewed more thoroughly by the press, and they show up more prominently in [online](https://blog.robenkleene.com/2019/06/10/2015-digital-audio-workstation-market-share/) [surveys](https://blog.robenkleene.com/2019/04/05/video-editor-market-share-numbers-from-2014/). In some ways this to be expected, online communities attract the most passionate users, which will also tend to be the users who want the most features. But it gives the impression that the simpler apps don't have fans, and they're used because they're free, not because they're good.

The argument for simple creative software feels very hand wavy to me. It's based on the premise is that there's another group of active users, that doesn't show up in online communities and surveys, who has the ability to do complex creative work like making movies, music, or software, while not being able to learn  complex software to perform those tasks. The only way to know for sure would be to see the usage statistics for those apps, which aren't available. Based on the information that is available, I'm not convinced that simple creative software has an audience of anything more than people looking for a free alternative to expensive software[^glitchisalsofree], and there aren't enough free users to build a business around. The only company that should be making these types of apps is Apple, in the interest of [commoditizing the complements](https://www.joelonsoftware.com/2002/06/12/strategy-letter-v/) of their hardware products. So why are other companies making these kinds of apps?

* * *

[^versioncontrolisaboutcollaboration]: All of the features that Spolsky lists are all related to [version control](https://en.wikipedia.org/wiki/Version_control), and he doesn't mention the most important reason to use version control: collaboration. [Glitch presents an alternative vision of collaboration](https://glitch.com/teams/), working more like [Google Docs](docs.google.com):

    > Glitch makes coding together as easy as working in Google Docs. You can see all active users on a project and jump to whatever line they’re on.

    I wouldn't expect this to be a good approach for programming, but then, I wouldn't have expected it to be [a good approach for design](https://www.figma.com/) either.
    
[^simpledrivesmeupthewall]: I'm firmly on team complicated, [the measure of a platform is not how popular its features are, it’s what the most capable users of your platform can accomplish](https://blog.robenkleene.com/2019/09/11/new-iphones-will-replace-3d-touch-with-haptic-touch/). What drives so many of us up the wall about iOS is that on the Mac, Apple always also offered [Logic Pro](https://www.apple.com/logic-pro/) and [Final Cut Pro](https://www.apple.com/final-cut-pro/), on iOS the only options are the simple ones.

[^everythingissubsidized]: The prices of Final Cut Pro and Logic Pro X are also almost certainly also subsidized by other parts of Apple's business, but at $299.99 and $199.99, they are still expensive relative to most software.

[^glitchisalsofree]: [Glitch is also free](https://glitch.com/help/cost/).

