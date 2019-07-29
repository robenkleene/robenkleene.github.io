---
layout: link
title: "The Performance of Design Apps"
categories: Design, Software
---

[Marc Edwards](https://twitter.com/marcedwards) follows up his [previous look at CPU and GPU usage](https://blog.robenkleene.com/2019/07/18/cpu-gpu-usage-of-design-apps/) with some performance tests:

1. [Rotating 16,384 rounded rectangles.](https://twitter.com/marcedwards/status/1153632333234204672)
2. [Changing the color of the rectangles.](https://twitter.com/marcedwards/status/1153632481817456640)
3. [Undoing that change.](https://twitter.com/marcedwards/status/1153632610804850695)

Edwards [declares](https://twitter.com/marcedwards/status/1153632696687460359) [Affinity Designer](https://affinity.serif.com/en-us/designer/)[^affinitydesignerusingopengl] the best overall winner of the above tests.

He followed up with a few more:

- [The file size of the test document.](https://twitter.com/marcedwards/status/1153641710489964544)
- [Opening the test document.](https://twitter.com/marcedwards/status/1154261803594997760)
- [Running "fit to window" after zooming in.](https://twitter.com/marcedwards/status/1154262176581865472)

I'd summarize the results of all of the tests by saying [Affinity Designer](https://affinity.serif.com/en-us/designer/), [Adobe XD](https://www.adobe.com/products/xd.html), [Figma](https://www.figma.com/), and [Sketch](https://www.sketch.com/) all performed comparably, while [Adobe Photoshop](https://www.adobe.com/products/photoshop.html) and [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) clearly performed worse.

* * *

[^affinitydesignerusingopengl]: Surprisingly, Affinity Designer performed better using [OpenGL](https://en.wikipedia.org/wiki/OpenGL) over Apple's own [Metal](https://developer.apple.com/metal/). This can be configured in Affinity Designer's "Performance" preference.

