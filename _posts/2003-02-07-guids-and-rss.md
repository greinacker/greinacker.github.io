---
layout: post
status: publish
published: true
title: GUIDs and RSS
date: '2003-02-07 12:37:45 -0700'
date_gmt: '2003-02-07 19:37:45 -0700'
categories:
- Uncategorized
tags: []
---
There's an interesting issue with using elements in RSS feeds. Presumably, the element in RSS is intended to uniquely identify a post, so that aggregators can tell whether or not they have already seen a post. The [technorati feeds](http://www.sifry.com/alerts/archives/000226.html#000226), for example, use this to their advantage. If you look at one of their feeds, every minute the actual text of the items is different ("updated n minutes ago" or something along those lines); but if you were to use the guid, you could tell that you've already read the post.

Here's the kicker, though. Lots of people update a certain post throughout the day, adding corrections, updates, or whatever. When they do this, the guid typically does not change, but the content of the post does. If you already read the original post, there are two things the aggregator could do.

First, it could ignore the new, updated post, because you've already read a post with that guid. This is pretty unfortunate, though, in the case where the update contains critical information. In many of the weblogs I read, I'm very interested in the updates, and I like to see them.

Second, it could display the new post (so you don't miss out on the new information). This is what NewsGator currently does. It looks at the title and description, and if something has changed, it will redisplay the post to ensure you don't miss anything.

There are numerous problems with both approaches; but the technorati feeds just plain won't work effectively unless you go with the first mechanism, which seems unfortunate.

What are your thoughts? How do you think the aggregator should work?
