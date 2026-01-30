---
layout: post
status: publish
published: true
title: Aggregators that automatically download web pages
date: '2003-12-12 08:55:47 -0700'
date_gmt: '2003-12-12 15:55:47 -0700'
categories:
- newsgator
tags: []
---
This is a pretty common request for NewsGator:

> Perhaps I'm missing something but I think that actually having a reader go out and retrieve the referenced news web page along with the summary feed is much more valuable...  Reading hundreds of news headlines is less useful when you are travelling, offline, etc.  as there is no way to get the actual content.
>
> Wouldn't it be possible to add a feature that retrieves the referenced URL?
>
> \[<a href="http://www.newsgator.com/forum/shwmessage.aspx?forumid=2&amp;messageid=1276" class="ngquotelink">NewsGator Forums</a>\]

Currently, NewsGator shows whatever is in the feed - nothing more, nothing less. If the feed contains full content, that what will be shown; if the feed contains only excerpts, that's what will be shown. In essense, we show whatever the publisher intended.

There are other tools that will go out and retrieve the contents of the web site at the link specified in the RSS item automatically at retrieval time (as opposed to viewing time), so it can be read offline, which is what's essentially being asked for above.

If the feed publisher really intended you to see the complete web page inside your aggregation tool, they could put the complete content inside the feed...then we would show that.  But often times they don't, obviously.

So we're caught between doing what the publisher wants (driving a click-through), or doing what the user says they want (scrape the page).  It's a tough call - we don't want to upset the publishers, as they're the ones providing the content...

There are also a number of downsides with a scraping mechanism.  It uses a sizable amount of bandwidth to retrieve all of these pages.  You may not even be interested in some of the pages, so they were retrieved for nothing, costing the publisher additional bandwidth.  Advertising stats on the publisher side will be skewed.  It's a tough call.

Any comments?
