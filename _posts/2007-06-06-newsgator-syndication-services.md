---
layout: post
published: true
title: NewsGator Syndication Services
date: '2007-06-06 20:51:41 -0600'
categories:
- newsgator
tags: []
---
It's almost time for another NewsGator Platform Roadmap post (a couple more weeks), and I haven't posted for a while so I have a lot of pent-up blog frustration. :-) Before I do the roadmap post, I'm going to make a series of posts describing how we are looking at the industry, our products, and some of our current thinking with respect to our different business areas. I have a lot of stuff coming up...but today, I want to talk about NewsGator's [Syndication Services](http://www.newsgator.com/Business/PrivateLabelPlatform/), formerly called Private Label. There’s so much here, and things are changing so quickly, so I'd better get this out quick.

**Core platform**

The syndication services are built on top of NewsGator's core online platform; this is the same platform that powers NewsGator Online, FeedDemon/NetNewsWire/Inbox/Go/other synchronization, and [NewsGator Enterprise On-Demand](http://www.newsgator.com/Business/EnterpriseOnDemand/). This is a significant beast - it has about 1.5 billion articles indexed, sees about 7 million new articles per day, sustains around 650 new articles per second at peak times during the day, and supports about 15 million API calls per day from customers and our own clients. It also collects usage metadata, which can be used to calculate relevance information (more on this another day).

Having such a core platform to build on helps ensure our syndication services are robust, scalable, and perform well. It also gives us the ability to deliver content very quickly after it's been published - many publishers will ping this system when they publish new content, which leads to an overall distribution time of a few seconds. This core platform has also proven to be very fast and reliable, enabling us to provide aggressive service level agreements to our syndication services customers.

So that's the platform, which is key to being able to offer the services that we do. There are really two external parts to the syndication services - these are data services, and widgets. Let me talk about them one at a time.

**Data Services**

The [NewsGator Online API](http://www.newsgator.com/ngs/api/) is used by our own clients (FeedDemon, NetNewsWire, Inbox, Go!, and others), as well as third-party rich clients. But a completely different use of the API is enabling third-party web sites to integrate our content and data into their own sites.

One example of this is USA Today - if you look at their [section front pages](http://www.usatoday.com/news/default.htm), you'll see an "across the web" section of the site. That entire section is powered by our API, using code that USA Today wrote for themselves.

We have other significant API Data Services customers whom I unfortunately can't talk about publicly at the moment...but these are large publishers and related business, making millions of API calls per day, relying on our content, metadata, synchronization, and content/subscription management capabilities.

**Widgets**

Widgets are the other half of the syndication services business. The widgets are generally falling into two categories, although there are certainly more use cases we're running into:

1\. Republishing third-party content on your own web site. An example - CBS News has a [section of their site](http://www.cbsnews.com/stories/2007/05/23/virginiatechshooting/main2840785.shtml) devoted to the Virginia Tech tragedy; however, they realized that many of the real stories of the tragedy and thereafter were not going to be written by CBS journalists, nor AP reporters - they were going to be written by regular people, on their blogs. They implemented a widget on the side of their site (see left side of the page) to pull this content into the site, and then made this widget available to their affiliates as well.

NewsGator provided the widget itself, as well as the critical back-end editorial tools for the CBS folks to use to filter and choose content they wanted to include in the widget.

Another great example is on the [inrich.com site](http://www.inrich.com/cva/ric/news.apx.-content-articles-RTD-2007-06-06-0142.html) (a Media General property) - scroll down to “What's Hot, Headlines, Video” to see an example of such a widget in action (be sure to play a video!), integrated with the ad units that Media General wanted to use.

Some customers have referred to this capability as a "cheap and cheerful Associated Press" - indeed.

2\. Syndicating your own content out to other sites. Here, media sites create a widget, use the editorial tools to get content into it, and make that widget available to other folks to put on their sites.

A good example here is Discovery - they have a widget containing news and blog posts from the Everest expedition, and initially put this widget on their Everest blog site...but with a few clicks, anyone can take this widget and [add it to their own weblog](http://walkerfenton.blogspot.com/) (right side column, scroll down a bit), their Google page, or any of several other popular places.

This has been a fascinating business. The way our customers are implementing these capabilities is dramatically different than what they were doing just 12 months ago - and that's a fun thing to watch. Tomorrow alone, I have meetings with two major publishers to talk about strategy and what they might be able to do - and the best part is, with the maturity of our platform, these things are usually quick and easy to try. Usually even the things we haven't thought of yet. :-)

In a customer meeting the other day, someone said "wow, this is the future of media." That’s a pretty big statement - but this is certainly a part of that future.
