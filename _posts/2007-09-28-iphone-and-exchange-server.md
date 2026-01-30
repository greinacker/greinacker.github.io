---
layout: post
status: publish
published: true
title: iPhone and Exchange Server
date: '2007-09-28 14:11:58 -0600'
date_gmt: '2007-09-28 21:11:58 -0600'
categories:
- apple
- iphone
tags: []
---
I've been using an iPhone for a while, and it's definitely a whole new experience on a phone. I've been enjoying it quite a bit, but perhaps I'll write more about that later.

I have it connected to our corporate Exchange server, and the first thing I noticed was that when I would delete a message on the iPhone, it wouldn't get deleted in Exchange.

Technically, the message gets marked for deletion in Exchange via IMAP. The problem is, it just sits there in that state until eventually someone does an EXPUNGE command on your mailbox. And even worse, when you connect Outlook to Exchange via non-IMAP methods (like whatever the default is), the message just shows up with no indication it was marked for deletion.

Well, [Shawn at fresh logic studios](http://blogs.freshlogicstudios.com/Posts/View.aspx?Id=44a01293-3b32-4ee0-b23c-fac99348e1cd) has built a small app that will periodically run an expunge against your mail account on Exchange, and this completely solves the problem. As downloaded, it runs the command every 5 seconds; I recompiled it to instead run every 5 minutes, so as not to get my IT guys too unhappy with me.

So a HUGE thanks to Shawn for writing this - it's a lifesaver! Highly recommended.

<span style="color: #ff0000;">UPDATE 7/14/2008</span> - I notice a ton of traffic coming to this post over the last few days; this post was written when the only way to connect your iPhone to Exchange was via IMAP.  Using the iPhone 2.0 firmware, you can use Exchange ActiveSync, which doesn't have the same issues as described above.
