---
layout: post
published: true
title: Jim Louderback on NewsGator Online Services
date: '2004-02-06 09:48:47 -0700'
categories:
- newsgator
tags: []
---
A few days ago, Brian Livingston wrote [an article](http://www.eweek.com/article2/0,,1516842,00.asp) for eWeek talking about NewsGator 2.0 and NewsGator Online Services (NGOS).

Today, Jim Louderback wrote [a response](http://www.eweek.com/article2/0,4149,1517234,00.asp) for eWeek, which I'd like to publicly respond to. The first few paragraphs describe RSS...and then:

> *But there are a few problems with the service...the NewsGator service requires that a special API be used to access feeds inside that service. Alas, that API is not freely available and is completely non-standard—in other words this newsfeed service could turn RSS into a nasty walled garden.*

This argument doesn't follow. We're not in any way trying to create a "walled garden". Here are the facts:

1\. **There is no special API to access feeds** within our service - it's just normal RSS or Atom.

2\. Even our subscriber-only feeds (such as custom search feeds or premium content feeds) **can be accessed from any RSS-aware tool** that supports authentication. And most mature RSS tools support this.

3\. The API that was discussed in Brian's article, the API that he mentioned hasn't been published yet, is only used for the following functions:

- Subscription synchronization. So if there are multiple tools, such as NewsGator for Outlook, NewsGator Web Edition, and perhaps another application that is built by a customer, they can synchronize their subscriptions and read/unread/downloaded information via the API.
- Adding custom search feeds or premium content feeds. If you want to build, say, a custom search feed, we have an API that can be used to build and set up the feed...then you can access it via any RSS client.

So, **our system is indeed standards-based - except in those areas where there *are* no standards**.

Jim then goes on to say:

> *It's not a bad idea, but unfortunately the tiny NewsGator company has been eclipsed, after just a few weeks, by powerful Yahoo.*

The capabilities of NGOS go far beyond what Yahoo is doing with their integration of RSS into My Yahoo. The web edition is only one part of the NGOS service package...

And then Jim concludes:

> *Cast your vote for free choice, and away from restricted, proprietary services, by using open RSS news readers and all feeds. Walling RSS up inside a proprietary garden is wrong.*

We're not any more proprietary than other services - including My Yahoo, or other web-based tools.

We read all feeds. We're not walling anything up.
