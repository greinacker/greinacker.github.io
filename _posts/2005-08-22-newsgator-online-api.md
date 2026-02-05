---
layout: post
published: true
title: NewsGator Online API
date: '2005-08-22 10:54:04 -0600'
categories:
- newsgator
tags: []
---
It's been a while in coming...but the [NewsGator Online API](http://www.newsgator.com/ngs/api/default.aspx) - the next major piece of the NewsGator [platform roadmap](/gregr/weblog/2005/02/09/newsgator-platform-roadmap-where-are-we-going/) - is now online and ready to use.  And you heard it here first...because the press release isn't going out for another day or two. :-)

Using the NG API, you can build applications that synchronize with our online system, and thus synchronize with other products that are connected to it.  So if someone is using NewsGator Outlook edition at work, FeedDemon 1.6 or NewsGator Online at home, and you write a cool mobile application (for example), they'll be able to read the same content and sync with your new application.

And this goes far beyond earlier generations of our API, and other folks' API's - **you can now synchronize not only subscriptions and content, but read/unread state**.  Mark an item read (or unread) via the API, and it will be auto-magically marked as read (or unread) in NewsGator Online, NewsGator Outlook edition, FeedDemon, and any other connected product that's using the API.

This is the same API that our own desktop products (NewsGator Outlook edition 2.5 and FeedDemon 1.6) use, and it's a subset of the NewsGator Media Platform API.

It's free for non-commercial use (and licenseable for commercial use); you'll need to get an [API product key](http://www.newsgator.com/ngs/subscriber/APISignup.aspx) (sign in first with your NewsGator Online account), and then you'll be off and running.  The [API documentation](http://www.newsgator.com/ngs/api/default.aspx) is online, and our support team will help you if you run into problems.  We even have a [sample application](http://www.newsgator.com/ngs/api/SyncAPISample.zip) that implements a 3-pane aggregator, with full synchronization support, that one of our engineers wrote in a couple of hours.

We consider the API a work in progress.  It's solid and reliable - our own products are using it, after all - but we're definitely looking for any feedback from the community about how we could make it better and easier to use.  So take a look, build some cool stuff, and let us know what you think!
