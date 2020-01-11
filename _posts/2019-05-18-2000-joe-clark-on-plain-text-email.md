---
layout: link
title: "Joe Clark on Plain Text Email, 2000"
categories: Email, Old
---

Joe Clark's piece ["The format=flowed FAQ"](https://joeclark.org/ffaq.html) acts as an interesting counterargument to my piece on [Apple Mail's lack of a true plain text mode](https://blog.robenkleene.com/2019/04/14/apple-mail-doesnt-support-plain-text/). Joe is advocating for the [Format=Flowed email standard](https://www.ietf.org/rfc/rfc2646.txt), which is similar to how Apple Mail handles [email quoting](https://en.wikipedia.org/wiki/Posting_style)[^noformatflowed]:

> A mailer program that understands f=f suppresses the display of > characters. They’re still there, only hidden.

> Instead, the mailer shows quoted text some other way – usually via an excerpt bar, a vertical bar drawn to the left of the quoted text. The mailer program treats the > characters as movable. If you add or delete text or resize the display window, the program recomputes where the > characters should go but keeps the quoted text tidy and well-flowed, hence the name "flowed text."

The just of the argument is that prefacing each quoted line with a `>`, which is the plain text convention I prefer, has some issues dealing with lines of varying lengths. Which is true, but if an email program can reflow quoted text to display it nicely, a [Unix filter](https://en.wikipedia.org/wiki/Filter_(software)) can do the same; what plain text gives you is control. With that said, Joe's argument is definitely compelling, whenever I read about email I'm always left with the same impression: It's complicated.

* * *

[^noformatflowed]: Although, as far as I can tell, Apple Mail does not implement the actual `format=flowed` standard, which requires adding it to the `Content-Type` header.
