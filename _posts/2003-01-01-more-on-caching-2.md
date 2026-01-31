---
layout: post
status: publish
published: true
title: More on Caching
date: '2003-01-01 12:00:16 -0700'
date_gmt: '2003-01-01 19:00:16 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
[Justin Rudd](http://pinetree-tech.com/weblog/archives/2002/12/30.shtml#more_on_caching) did some research on a caching product called [Coherence](http://www.tangosol.com/). Interesting...I wasn't aware of any such product.  
  
The part of his post that got me thinking was when he was talking about two different types of caches - "Replicated" and "Distributed" (I actually find the term "distributed" for the second type to be somewhat misleading). I got to thinking about what kinds of data you could safely store in each type of cache.  
  
Justin defines the replicated cache:  

> *A replicated cache is where every web server (or app server) has a cache. Then when an entry is added or removed, a multicast packet is sent out and all the other caches update themselves.*

And notes that it suffers from the race conditions and other problems [previously](/gregr/weblog/2002/12/15/caching-in-web-farms/) [mentioned](/gregr/weblog/2002/12/20/more-on-caching/). But what kind of data could we store in this kind of cache? Read-only data, of course...but what about read/write data?  
  
For this type of cache, any data for which outdated data is acceptable would be a candidate. My referrer log data for posts, for example. It's not going to kill me if this data is slightly out of date. But in many cases, with complex inter-related data, I don't think it's always trivial to determine if stale data really is acceptable. In some cases you might have to cache related data as well, so you always have a consistent view of the world (albeit outdated).  
  
The second type of cache, the "distributed" cache, is where there is a central cache server (or cluster of them) between the code and the database. Justin talks here about caching data from multiple tables, or multiple systems, even with data that requires transactional integrity. This cache type seems workable for some scenarios, but the transactional issue is more interesting.  
  
You could only use such a cache for transactional data in the case where the underlying cached data is *never updated* from another source. If your cache has a stale view of data, then transactional integrity goes right out the window. This rules out many legacy systems, as these systems are typically being updated from legacy sources as well as the new code. And even for the single data source, multiple table case, this implies that all N tables involved are ONLY updated via the cache. This is a pretty tough constraint to put on an architecture.  
  
For the sake of argument, let's say we're ok with this, and the cache will be the single source of updates. Then we get into the locking issues. I don't think you can simply lock a single cache entry - it depends on the underlying data layout. For a single-table cache object, maybe...but the more general case gets complicated. Cases come to mind where locking one cache object might require locks on *other* cache objects, and figuring out which ones would not be trivial. To avoid having to determine which other (seemingly unrelated to the current operation) objects would need to be locked, one would have to design the objects to the very granular. For example, all updates to a customer would have to go through a single object instance.  
  
So to ensure integrity of our data representation, all updates to customer A must go through cache object A. This is a pretty serious concurrency constraint. What I could end up with is multiple requests from multiple servers, all trying to lock a single object on a single server. This is pretty much the number one killer to scalability...  
  
Most transactional systems I have come across or worked on tend to map objects to verbs, rather than nouns. And verb-objects don't lend themselves to caching - caching is all about maintaining state, and verb-objects generally don't maintain state. Especially across transaction boundaries. Thoughts?
