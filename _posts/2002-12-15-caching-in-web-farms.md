---
layout: post
published: true
title: Caching in Web Farms
date: '2002-12-15 10:40:16 -0700'
categories:
- Uncategorized
tags: []
---
[Justin](http://pinetree-tech.com/weblog/) is [discussing](http://pinetree-tech.com/weblog/archives/2002/12/13.shtml#caching) caching in a multi-server environment, which I wanted to comment on.

First, there is the question of what data is good to cache.  Justin mentions a possible rule of thumb:

> *Let's assume you have some data that is updated 1 time out of every 1000 reads. That's a good candidate for caching in my mind.*

I think this really depends on the application.  The more the data gets updated, the more cache coherency processing will be involved (unless you allow stale data, which we will discount for this discussion).  And as he mentions elsewhere, the cost of reading the data from the actual data store certainly factors into the equation.

He then discusses the interesting question of how to implement a cache in a multi-server environment.  He concludes that a N x N cross-linked notification mechanism is unworkable in real life (I agree in general), and continues:

> *So what are some other ways? I could do a reliable TCP multicast to all the web servers. That way all I have to know is one IP address. But TCP multicasting doesn't scale that well in my experience with SwiftMQ and iBus JMS solutions.*

The tough problem I see here, even if you could make this work and scale, is the race conditions.  Sometimes you use transactional reads from databases to ensure that you read the data either before or after a writing transaction, but not during.  But in any case, you know the data is the most up to date available.  With a system like this, you could have just updated the cache on your machine, and you're starting to broadcast updates to the other servers, but at the same time another server is reading the same value from its own cache.  The data is stale, if only by a few milliseconds.  But in many applications, this will be a huge problem.

So one might say, "I'm only caching data that doesn't change very often, like my catalog and prices, so this won't be a problem."  Well, I'm not so sure...if you update the price of an item, but there is a small window where your servers do not agree what the price is for the item, then you're screwed - and depending on how your load is distributed and how your application is designed, it's conceivable you could end up with corrupt data.

Justin then describes another scenario:

> *One thing that I've been playing around with is this -  
>
> ![](http://pinetree-tech.com/weblog/files/solution3.png)
>
> Here I have a cache server. The web servers simply talk to the cache server and the cache server can batch up commands to the database. This works very well with Domain Models. I've never tried it using a Table Module Gateway. But it should work the same.*

This certainly solves the problem I was just discussing.  However, you now have something between the web servers and the database, which has become a single point of failure.

Aha, one thinks, I will have multiple cache servers, and they will somehow ensure coherency between themselves.  Well, now you're back to the original problem of coherency and timing, as well as a fail-over model which maintains absolute coherency - and it's not an easy problem to solve.

In general, I think this is a hard problem to solve in the general case, and that's probably why there aren't any magic cache servers being sold.  But for a particular application, it's not quite as bad, because you know how often your data will be updated, possibly the time of day it will be updated, etc.  The easiest data to cache is going to be data that doesn't change except on a fixed schedule (for example, update the product catalog once a day).  For data that is subject to updates at any point, I think you're left with an application-specific solution, which can take into account the strict-ness of your coherency requirements.
