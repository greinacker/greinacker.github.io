---
layout: post
status: publish
published: true
title: Web Services Performance
date: '2002-06-17 21:34:12 -0600'
date_gmt: '2002-06-18 04:34:12 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
From [this article](http://www.adtmag.com/article.asp?id=6403):

> *"Most observers say Web services do not yet lend themselves to huge, transaction-based systems because there is some delay associated with Web services making requests, particularly across multiple networks."*
>
> *"\[...\] it soon became apparent' that the Web services approach would not fly, Johnson said. The \[HSN.com\] search engine handles more than 200,000 requests every day -- and that volume goes up significantly during the holiday season."*

First of all, you can certainly build "huge" systems with web services; you just need to architect them correctly.  Sure, each call to a web service might take a bit longer than a different kind of call; but in transactional systems, we've all learned over the years to do a lot of work in each call, to reduce "chattiness".  This reduces the relative method call cost in a well-designed system.  As for the transactional system reference, the way things work today, you'll be fine as long as you don't allow a transaction to live across multiple service calls.  This is how most highly scalable systems are built anyway; it's nothing new.

As for the 200,000 requests/day, if I apply some calculations used in the past, this comes out to 5.6 requests/second sustained during the peak period of the day (this is of course an estimate based on guesses about their traffic patterns, guessing 50% of traffic during a 5-hour peak period).  A 3x instantaneous peak during this window would give us 16.8 requests/second peak.  This still doesn't seem large; if there was a performance bottleneck, it sounds to me like it wasn't due to the fact that there was a web service entry point.  At a previous employer, we designed and tested a system which handled 100-300 real-world web service requests/second on modest hardware clusters. 

I hate to see articles saying "web services don't perform."  It's all about good design.
