---
layout: post
published: true
title: FeedDemon 2.0 beta 2
date: '2006-02-16 10:40:00 -0700'
categories:
- newsgator
tags: []
---
What do you get when you put a client guy ([Nick Bradbury](http://nick.typepad.com/)) and an API guy ([Gordon Weakliem](http://www.agileprogrammer.com/eightytwenty/)) in a room together for an hour?

*Insanely* fast content retrieval/sync.

Last night I was playing with the new public [FeedDemon 2.0 beta 2](http://www.bradsoft.com/feeddemon/beta/) release.  I downloaded my content, read through it, and a while later did one last full retrieve before leaving.  I have about 150 feeds.  How long do you suppose that last full retrieve took?

About 4 seconds.

How could it be this fast?  Well, in the normal case when you click "refresh" in an aggregator with 150 feeds, it will go hit those feeds and see if there is new content.  Many of them will return 304's indicating they're not modified, but even that takes time.

With the NewsGator API, you make one call that asks which of your feeds have updated content that you don't already know about.  In my situation above, it said there were six such feeds.  It then retrieved content for those six feeds...and all this took a total of about 4 seconds.  150 feeds completely up to date - with very little bandwidth used, in very little time.  Very cool.

And a tease for the Mac folks out there waiting for a new build of [NetNewsWire](http://ranchero.com/netnewswire) - [Brent Simmons](http://inessential.com/) was in the same room with Nick and Gordon. :-)  It won't be too long now!
