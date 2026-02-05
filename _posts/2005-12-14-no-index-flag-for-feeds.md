---
layout: post
published: true
title: No-index flag for feeds
date: '2005-12-14 07:04:22 -0700'
categories:
- newsgator
tags: []
---
At the [RSS Industry Night Roundtable](http://rssdiary.marketingstudies.net/content/rss_industry_night_roundtable_irss_solution_coming.php) (thanks Rok for setting this up), most of the discussion centered around individualized RSS, including both truly individual feeds and also feeds that contain instrumentation for metrics gathering.  Both kinds of feeds exist in the wild today, and both cause some problems for hosted aggregators like Yahoo!, NewsGator, and others, and feed search engines (Technorati, Feedster, NewsGator, and others).

In both cases, we have a situation where we have a number of independent feeds, which all contain the same or similar content.  Some of the content may not be intended for public consumption (for example, it might have the user's name in it as a personalized message), and other content may be duplicated but slightly different (think per-feed marked-up URL's used for click-through tracking).

We need a way to avoid indexing this data.  \[aside: actually, other publishers have reasons for not wanting their content indexed as well - this solution will cover this third case also\]  Today, if you want Yahoo! to stop indexing your feeds, you call them and they mark your domain as such.  If you want NewsGator to stop indexing, you call us and we mark your domain.  And so on...which turns into a long list of calls you need to make. :-)  At the industry meeting the other night, nearly everyone in the room agreed we needed a no-index indicator.

So here's a proposal. Let's kick it around and hammer something out quickly.

```
<rss version=”2.0″ xmlns:r=”urn:anzu-industry-meeting-2005-12″>
  <channel>
    <title>My Feed</title>
    …
    <r:index allowIndex=”false” />
 
    <item>
      <title>My article</title>
      …
      <r:index allowIndex=”false” /> 
    </item>

```
  
This shows an "index" element at the feed level, which controls index-ability for the entire feed.  If the element is not present, allowIndex is implied to be true.

I also show an item-level "index" element (\*\*\*), which could specify the index-ability settings for a specific item.  I'm less sure about this one...but at the meeting, Eric Hayes at Attensa mentioned it, so I put it in for discussion.  I'd love to hear some thoughts about this one, including some use cases.

Implied behavior when a feed like this is encountered would be to a) not index the content, and potentially b) don't archive the content if you normally do archive content.

So anyway...this is all pretty simple, and it solves an immediate problem that the whole industry is seeing.  Please comment, either here or on your own blog (add a trackback), and let's see if we can agree on something quickly.
