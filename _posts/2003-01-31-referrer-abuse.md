---
layout: post
published: true
title: Referrer abuse?
date: '2003-01-31 12:42:58 -0700'
categories:
- Uncategorized
tags: []
---
Many news aggregators (including NewsGator) write something interesting (to them!) into the HTTP referrer field when retrieving RSS feeds. For example, NewsGator writes <http://www.rassoc.com/newsgator/> into this field. There have been some [interesting](http://www.kottke.org/03/01/030130rss_readers_.html) [posts](http://www.visiontech.ltd.uk/2003/01/31.html#a178) [about](http://www.decafbad.com/news_archives/000405.phtml) this recently, mostly saying that this is an inappropriate use of the referrer field, and that User-Agent is where the aggregator information should go (incidentally, NewsGator uses the User-Agent as well).

On the other hand, I've had some [comments](/gregr/weblog/2003/01/28/newsgator-v08-released/#comments) from folks who want to be able to customize the referrer field, presumably to point to their own site. This wouldn't address the problem, and in fact might make it worse, by adding more "bogus" referrers.

What do you guys think? There is still time to address this for NewsGator v1. I'm leaning toward defaulting to no referrer, and allowing the user to override this with a custom referrer string. Another option is what Aggie does (or used to), where the referrer could be something like http://www.newsgator.com/referrers?usersite=www.rassoc.com/gregr/weblog/. Thoughts?
