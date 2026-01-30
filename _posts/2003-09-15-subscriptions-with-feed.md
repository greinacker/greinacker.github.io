---
layout: post
status: publish
published: true
title: Subscriptions with feed://
date: '2003-09-15 07:50:52 -0600'
date_gmt: '2003-09-15 14:50:52 -0600'
categories:
- Uncategorized
tags: []
---
Pete Hopkins ([here](http://pirate.typepad.com/blog/2003/09/feed_dogfood.html), [here](http://pirate.typepad.com/blog/2003/09/more_on_feed_ur.html)) and Steven Wood ([here](http://www.stevenwood.org/2003/09/11.htm)) are lobbying for support for subscription links in the format

> feed://http://example.org/rss.xml

Steven even posted the necessary [registry entries](http://msdn.microsoft.com/library/default.asp?url=/workshop/networking/pluggable/overview/appendix_a.asp) for Internet Explorer to wire up an application to respond to a user clicking a link like this. So, for example, NewsGator could add a subscription whenever a user clicks on a feed:// link.

This seems like a reasonable idea to me...with the obvious benefit that a user could just click on the link, and the aggregator could add a subscription to the feed. As opposed to the situation today, where if the user clicks on a feed link, they'll see (at best) a page full of XML. Now of course they can right-click on an existing link, and select "Subscribe in NewsGator", but supporting a left-click subscription as well might be nice.

Other aggregators support a subscription link in a format like http://localhost:5678/..., but I dislike the idea of applications listening on certain ports like this. The feed:// idea is much more attractive, IMHO.

Comments?
