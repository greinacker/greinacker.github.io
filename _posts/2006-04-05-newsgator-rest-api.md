---
layout: post
published: true
title: NewsGator REST API
date: '2006-04-05 14:20:22 -0600'
categories:
- newsgator
tags: []
---
NewsGator has had a [web API](http://www.newsgator.com/ngs/api/) using SOAP for some time.  It's been very popular - it's used in our own clients ([NewsGator Inbox](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NewsGator+Inbox), [FeedDemon](http://www.newsgator.com/NGOLProduct.aspx?ProdID=FeedDemon), and [NetNewsWire](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NetNewsWire)), third party clients such as [RSS Bandit](http://www.rssbandit.org/), and private label customers (online, but unlaunched as of yet). We currently process millions of API calls per day in our online system, and the API is also implemented in [NewsGator Enterprise Server](http://www.newsgator.com/enterprise.aspx).

There has been quite a bit of feedback from developers about the API; most of this feedback centered around the lack of a REST version of the API.  We've found that some developers have never used SOAP, and there is a learning curve on certain platforms to learn a SOAP toolkit; other developers just don't want the extra complication in the messages, and prefer a REST solution.

Whatever your reasoning, though, you can now choose for yourself. We now have both SOAP and REST versions of the [NewsGator Online API](http://www.newsgator.com/ngs/api/) available.  The SOAP version has been around for a while, and is used by our own products.  The REST version is brand new, is [documented here](http://www.newsgator.com/ngs/api/NewsGatorRESTAPI.pdf), and enters a public beta today.  So try it out, and let us know what you think - we're looking for feedback!
