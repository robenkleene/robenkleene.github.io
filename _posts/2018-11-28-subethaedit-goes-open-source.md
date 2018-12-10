---
layout: post
title: "SubEthaEdit Goes Open Source"
categories: Software, Text-Editor
---

Classic macOS text editor [SubEthaEdit has gone open source](https://rant.monkeydom.de/posts/2018/11/28/see-is-back) (and free as in beer!): 

> This release fills me with great pride and joy. SubEthaEdit always has a special place in my heart. It is where my journey as a developer in the Apple ecosystem started. I owe it the position I am in today. This connection is why I'm taking the time to maintain it again and try to lead it towards a long lasting future. Therefore I think it is worthwhile looking at how everything came together.

The post itself, and [this remembrance by Gus Mueller](http://shapeof.com/archives/2018/11/subethaedit_goes_open_source.html), are both great reads about the formative days of OS X app development.

SubEthaEdit remains very relevant today. It's a hat in the ring for how to do collaborative text editing. Google Docs is the only successful application in this space and that's only for rich text, making live collaboration for plain text, e.g., source code and markdown, still an unsolved problem[^canvas]. SubEthaEdit is a plain text editor designed specifically for this purpose.

SubEthaEdit's implementation uses Apple's [Bonjour](https://en.wikipedia.org/wiki/Bonjour_(software)) networking technology (also notable that it's based on an "old Xerox Parc Paper"):

> Luckily one of us dug up an old Xerox Parc Paper that showed how latency free live collaboration can be done. At that time it fit perfectly with the newly released Bonjour technology to allow for networking without configuration between Macs. That was super exciting and we quickly got to a point where we could see this technology as viable and so we went on to build our application.

The major problem with SubEthaEdit's collaborative editing model is that it's only available while users are connected with each other. It's not like Google Docs where anyone with the right URL (and access rights) can just start editing the file. Instead one user has to invite other users to start editing, and the session only lasts as long as the original user keeps that file open in SubEthaEdit. It may seem like the Google Docs model is obviously better when compared this way, but it's really not that straight forward. The Google Docs model is entirely incompatible with version control for example, whereas SubEthaEdit's model works brilliantly with it. Of course the fact that SubEthaEdit is also a true first-class Mac native app makes it a joy to use.

One of the interesting bits about SubEthaEdit becoming free is that an application like this thrives on the network effect. If you want to edit a file with someone collaboratively, convincing them to use a $40 application is a big hurdle to overcome. I hope this change means SubEthaEdit gets some wider use, I know I'll be looking for opportunities to use it with my collaborators now.

[^canvas]: See also Roman Dillet for TechCrunch [writing about Canvas](https://techcrunch.com/2016/08/19/canvas-is-the-collaborative-markdown-editor-ive-been-waiting-for/) a great attempt to make a Google Docs for Markdown. It's now been shuttered; [it's also open source](https://github.com/usecanvas/).
