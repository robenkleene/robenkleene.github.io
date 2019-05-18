---
layout: post
title: "Apple Mail Doesn't Support Plain Text"
categories: macOS Email
---

For a long time I've had a [splinter in my mind](https://www.youtube.com/watch?v=DRnr3MiGWmo) when composing messages in Apple Mail. Just a general feeling that something wasn't quite right that I couldn't put my finger on. When I finally figured it out, it was so obvious, like a cheap illusion that falls apart upon close inspection: Apple Mail doesn't support plain text.

The confusion begins because I clearly have "Plain Text" set as the "Message Format" in Mail's preferences. But, if I quote a message I'm replying to, Mail uses a graphical bar to indicate the quoted portion of a message instead using plain text convention of preceding each quoted line with a `>` character:

![Top Post Reply](/assets/2019-04-14-top-post-reply.png)

This is frustrating for a few reasons. Since the cursor is also placed in the wrong position for replying to a quoted portion of an email (positioned ready to commit [top posting](https://daringfireball.net/2007/07/on_top)), if I then do what's natural, and remove the top empty line, and move the cursor to the bottom of the post, here's the result:

![Broken Reply](/assets/2019-04-14-broken-reply.png)

Deleting the top line breaks the quote formatting[^invisiblecharacters]. The workaround is simple, but unfortunate: Leave a blank line at the top of the message[^cutandpaste]. But this cuts right to the heart of why some people greatly prefer plain text: Rich text is *unpredictable* and therefore *unreliable*.

If I view the "Raw Source" of the message in Mail it's revealed as an obvious impostor:

	Subject: Re: Looks Can Be Deceiving
	Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
	Content-Type: text/html;
		charset=us-ascii
	X-Universally-Unique-Identifier: 2461FEC0-4D1C-48FD-89F0-E9C008A1E495
	X-Apple-Base-Url: x-msg://14/
	X-Apple-Mail-Remote-Attachments: YES
	From: Roben Kleene <contact@robenkleene.com>
	X-Apple-Mail-Plain-Text-Draft: yes
	In-Reply-To: <28887BC2-DCDC-4570-9ED0-9022A35E9D53@robenkleene.com>
	X-Apple-Windows-Friendly: 1
	Date: Sun, 14 Apr 2019 07:00:47 -0400
	X-Apple-Mail-Signature: 
	Content-Transfer-Encoding: 7bit
	Message-Id: <4D37CEDA-D731-4D66-8D54-66A0A84F94CD@robenkleene.com>
	References: <28887BC2-DCDC-4570-9ED0-9022A35E9D53@robenkleene.com>
	X-Uniform-Type-Identifier: com.apple.mail-draft
	To: Roben Kleene <contact@robenkleene.com>
	
	<html><body dir="auto" class="ApplePlainTextBody" style="word-wrap: 
	break-word; -webkit-nbsp-mode: space; line-break: after-white-space;">
	<br><br><blockquote type="cite">On Apr 14, 2019, at 6:18 AM, Roben Kleene
	&lt;contact@robenkleene.com&gt; wrote:<br><br>A message infiltrating a
	criminal enterprise<br></blockquote><br></body></html>

That's not plain text.

* * *

[^invisiblecharacters]: The reason the formatting breaks is because rich text is implemented by inserting invisible characters into the document. If you delete the invisible character, the formatting disappears or changes. The problem is how do you know when you're going to delete an invisible character? These invisible characters also cause a number of annoying rich text issues such as text taking on a different formatting depending on where it's pasted into a document.

[^cutandpaste]: Another problem with Mail's not using plain text to indicate message quoting is that it means a message can't be copied and pasted into a text editor, edited there, and then pasted back into Mail. If you try to do this you'll lose the indication of message quoting.
