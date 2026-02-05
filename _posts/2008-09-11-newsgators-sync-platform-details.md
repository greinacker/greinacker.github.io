---
layout: post
published: true
title: NewsGator's sync platform details
date: '2008-09-11 12:57:17 -0600'
categories:
- newsgator
tags: []
---
For the vast majority of NewsGator users (including folks using NetNewsWire, FeedDemon, or any of our other applications), NewsGator's sync system works totally transparently. But there are some nuances of our implementation that are sometimes visible to users. So, in the hopes of giving people a definitive place to go to understand this, I offer the following in-depth explanation of NewsGator's sync platform.

**The Mechanics**

All content is stored on NewsGator's servers. When an application like NetNewsWire does a sync, it sends up some bookkeeping information up to the NewsGator system (a "sync token"), and the system returns a list of feeds that NNW needs to update. NNW then requests updates for each of those feeds (which is generally a subset of the list of subscribed feeds), again using a sync token, and the system returns the new (not yet seen) or updated articles for that particular feed.

This system is extremely efficient. For feeds that haven't updated, NNW will not even have to request them. For feeds that only have a single new item, that's the only data that will be returned to the client. For scenarios like mobile applications (like NewsGator Go! or NetNewsWire for iPhone), this is pretty close to the minimum theoretical bandwidth required to deliver the content.

It's actually possible to reduce the number of calls even further, but at the cost of a potentially large (and expensive to process) response. Our APIs are instead optimized around the case I describe above.

\[note: this is somewhat simplified; for example, metadata also travels both ways during a sync, but I'm leaving discussion of that out for purposes of this article.\]

**Details**

NewsGator's online platform processes about 3.5 million feeds, and stores about 9 million new articles per day, as of this writing. There are a total of about 3 billion articles in the system.

Suppose you subscribe to a feed from CNN.com, and further assume that that feed publishes 100 new articles per day (I have no idea how many it actually publishes - just go with me here). Now imagine you go on vacation for a month, and you come back, fire up FeedDemon, and sync. There are now 3000 articles you haven't seen. Should we deliver them all to you?

Probably not.

Do we?

No, for several reasons. First and foremost, the user experience therein would totally suck; no one wants to wade through 3000 articles from a single feed. And second, it's pretty inefficient to retrieve all of this content from the API - we could deliver it, but it's going to take a lot of bandwidth to retrieve it, and a lot of work to process it. Using a mobile phone? This might well lock it up.

And the other reason is, our system allows you to mark individual articles as read, and that data is synchronized throughout the system and all of the clients you use. But we don't store your read states for all time - we only store it for fairly recent data. Do you really care if you marked an article read 2 years ago? Probably not.

So what do we do? We have a limit of how many articles will have their metadata state synced through the system. Here's the rule we currently use:

The number of articles in the current feed,

OR

14 days, up to 200 articles.

Whichever of the two conditions above yields more articles is applied.

Here are three examples of applying this rule:

Imagine a blog that publishes 5 times per month, and its feed has the most recent 10 items in it. This feed would sync 10 articles.

Now imagine the hypothetical CNN feed above, which had 100 items per day, and imagine the feed held the 20 most recent items. In this case, we would sync 200 items.

And finally, if a feed published 10 times per day, and held the most recent 20 items in the feed, we would sync 140 items.

If you really want to go back and browse through all 3000 articles you missed, you still can - they're all stored in NewsGator Online, and you can view them from the web site. In fact, you can go back all the way to when we first discovered the feed - over 4 years ago, in many cases.

**The Gotcha**

For most feeds, the algorithm described above makes things completely transparent, and articles and unread counts across all NewsGator-integrated applications will match up perfectly.

The gotcha is with feeds that have a lot of articles. For example, I have a smart feed for the term "NewsGator", and I see probably 400 new articles there per day, 200 at a time. So in this case, only 200 articles have state synchronized.

What can happen is the following:

1\. NetNewsWire downloads the feed, and shows 200 items, all unread.

2\. 3 hours later, you sync from FeedDemon, and you see 200 items, all unread. You read them all, and mark them read.

3\. An hour after that, you sync again from NetNewsWire...it syncs state from the old articles, and downloads say 25 new ones. You see 47 unread articles. You immediately sync again with FeedDemon, and it shows 25 unread. What gives?

The problem is the 200-article limit, and the fact that some of the articles fell off that ledge while still showing as unread in one application...and thus don't have all of their state synchronized.

This problem used to be much more acute - it's more rare now that we've raised the article-sync limit up to 200. But it's still possible to run into this, specifically with very prolific feeds.

We've experimented with various different limits - the current 200 articles seems to be a good compromise, perfectly syncing the vast majority of feeds while maintaining the efficiency that our client applications demand. We're also working on some things that will make this invisible to API clients, while still working within the constraints.
