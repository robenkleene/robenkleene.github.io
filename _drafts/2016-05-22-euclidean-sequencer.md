---
layout: post
title: "Euclidean Sequencer"
categories: Max, Ableton-Live, Music-Production
---

![Euclidean Sequencer](/assets/2016-05-22-euclidean-sequencer.png)

I've built an [Euclidean Sequencer](https://github.com/robenkleene/euclidean-sequencer)[^literate] for Ableton Live in [Max for Live](https://www.ableton.com/en/live/max-for-live/). 
I've been interested in [Euclidean rhythm](https://en.wikipedia.org/wiki/Euclidean_rhythm) ever since [I first heard about it](http://createdigitalmusic.com/2011/03/circles-and-euclidian-rhythms-off-the-grid-a-few-music-makers-that-go-round-and-round/) because it looked like a good solution to some of the problems that come up when making music with a computer. Most of these problems involve what I call "the grid".

![Monome](/assets/2016-05-22-monome.jpeg)

This is a  [Monome](https://en.wikipedia.org/wiki/Monome)[^monome], it's a 16 x 16 grid of LED buttons that can be mapped to control any aspect of an electronic composition. By far the most common thing they're mapped to is sequencing notes in time (called "steps"). The 16 buttons across mean four steps per measure in 4/4 time[^constraints]. 

![808](/assets/2016-05-22-808.jpeg)

The Monome isn't the inventor of the 16 steps by any means, that goes back decades. The [Roland TR-808](https://en.wikipedia.org/wiki/Roland_TR-808) is a historic example of this layout. It's an electronic music tradition that's been passed down for generations.

The disadvantages of this design are obvious, the rhythmic possibilities of 16 steps were exhausted long ago, but the *advantages* are much more interesting. This small palette acts is a scaffolding for more adventurous ideas, it's a familiar base that can lure listeners far outside of there comfort zone. It's what allows DJs to blend songs together, the unsung benefit of DJ sets is just how much experimental music gets slipped into DJ sets and is actually *enjoyed* (by people who'd wouldn't otherwise find themselves face-to-face with a trout mask).

The grid has been so successful as a compositional tool that it permeates through all kinds of electronic instruments, to the degree that it can be an uphill battle to deviate from it. In many ways this is a good thing, innovation happens when the common cases are effortless, freeing the musician to focus their effort on invention. The balancing act for new tools is how to facilitate the exploration of new ideas without interfering with existing workflows. 

This is where Euclidean rhythm comes in. A Euclidean sequencer is basically polyrhythm generator: It takes two parameters: a number of notes and a number of steps, and it algorithmically positions the notes as equidistant as possible in the number of steps. For example, three notes and seven steps results in the pattern `E(3,7)  = [x . x . x . .]`. It turns out that equidistant distribution is a key to creating rhythms that are inherently musical[^traditional].

Polyrhythms are a great way to make rhythms sound fresh, repeating multiple rhythms at different rates inherently creates variation over time. And their under-explored, because they're difficult work with. The grid in particular makes polyrhythms impossible for any number of steps that doesn't match the 16 subdivisions. So a tool that simultaneously addresses all of these problems while not interfering with the benefits of grid is very useful.

Now I just need another tool to generatively manipulating the Euclidean sequencers parameters, then I can sit back and leave the music making up to the machines entirely. I like making software more anyway.

* * *

[^literate]: The repository contains some nice examples of using [Literate CoffeeScript](http://coffeescript.org/#literate) to [annotated the Euclidean algirthm](https://github.com/robenkleene/euclidean-sequencer/blob/master/source/src/coffee/bjorklund.litcoffee).

[^monome]: I love the Monome's design because it distills the converging trend toward flexibility in electronic instrument design to its essence. Predictably, it's been tremendously influential, a google image search for [`grid midi controller` ](https://www.google.com/search?q=grid+midi+controller&tbm=isch&gws_rd=ssl) reveals seemingly endless Monome-inspired designs.

[^constraints]: The 16 steps are a great example of [embracing constraints](https://gettingreal.37signals.com/ch03_Embrace_Constraints.php).

[^traditional]: An extraordinary number of traditional rhythms can be generated through this simple process, see [the Example Rhythms](https://github.com/robenkleene/euclidean-sequencer#example-rhythms) section.