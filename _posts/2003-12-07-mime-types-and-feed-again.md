---
layout: post
status: publish
published: true
title: 'MIME types and feed: again'
date: '2003-12-07 11:08:38 -0700'
date_gmt: '2003-12-07 18:08:38 -0700'
categories:
- Uncategorized
tags: []
---
Joe Gregorio has a good post about MIME types and the feed: scheme:

> *There has been much talk today, and in the far past, of how to automatically handle syndication subscription. The conversation was first brought up and [thoroughly discussed by Greg Reinacker](/gregr/weblog/2003/09/15/subscriptions-with-feed/). The issue has [resurfaced on the \[atom-syntax\] mailing list](http://www.imc.org/atom-syntax/mail-archive/msg01344.html). Now there are a small contingent of folks pushing for a new uri scheme called 'feed:' that would enable syndication subscription. [Creating a new URI scheme is a bad idea, don't do it](http://www.w3.org/TR/webarch/#pr-new-scheme-expensive). \[[BitWorking](http://bitworking.org/news/Atom_Auto_Sub_How_To)\]*

There's more to his post; click through and read it.

I had a long response typed out, and it's been sitting in my Drafts folder for a day now. I deleted it; I just have two short comments now:

First: many folks don't have sufficient access to their web server to change MIME types. Not a problem for say, Blogger and TypePad, but it is indeed a problem for, say, some Radio and DasBlog users.

Second: As Joe mentions, using MIME types will require adding some kind of link tag to the feed, and he proposes exactly this for Atom feeds. But that doesn't help for all of the existing RSS feeds in the wild today...and adding a tag to all RSS feeds is problematic (spec is frozen so we can't require the tag, and adoption rates for an optional tag will be dismal).

It's all about adoption rates - for something to be useful to the average user, it needs to be pretty pervasive. Both of the above issues fly in the face of quick adoption.

More reading [here](/gregr/weblog/2003/09/15/subscriptions-with-feed/), [here](/gregr/weblog/2003/09/16/more-on-feed/), [here](/gregr/weblog/2003/09/21/rss-and-mime-types/), and [here](http://www.25hoursaday.com/weblog/PermaLink.aspx?guid=385809e7-f9cd-4318-8066-37e0853a97b8). And lots of other places I've missed, probably. :-)
