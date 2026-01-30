---
layout: post
status: publish
published: true
title: Subscription list updated
date: '2003-03-31 19:03:48 -0700'
date_gmt: '2003-04-01 02:03:48 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
I finally got around to updating my subscription list, over on the right side of the screen if you're viewing the HTML version of this site. This one is generated from my NewsGator subscription file.

In my case, it's pretty simple - the page is rendered from a list in my SQL database, so I just wrote a quick (10 minutes) application to whip through my NewsGatorSubs.opml file, extract each outline element, and insert it into my DB. Even if you don't use a database (most folks!), it would be easy to write a small XSLT transform to transform the enhanced NewsGator OPML into whatever you need.

FYI, you can find your NewsGatorSubs.opml subscription file at:

\Documents and Settings\\Application Data\RAI\NewsGator\NewsGatorSubs.opml

Someday, hopefully there will be an easier way to integrate with your blogroll - but for now, this isn't too painful, if you have some XML knowledge. If not, post what you need, and someone might help you. :-)
