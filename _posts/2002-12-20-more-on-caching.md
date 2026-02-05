---
layout: post
published: true
title: More on Caching
date: '2002-12-20 09:25:20 -0700'
categories:
- Uncategorized
tags: []
---
After [writing a bit](/gregr/weblog/2002/12/15.html#a100) the other day on server farm caching, I noticed an [article](http://msdn.microsoft.com/msdnmag/issues/02/12/WebFarms/default.aspx) in December's MSDN Magazine titled "Use Data Caching Techniques to Boost Performance and Ensure Synchronization for Your Web Services".  I read it this morning over a bagel...

Basically the article describes a N x N cross-linked notification mechanism for cache coherency notifications.  Whenever a server updates the data, it calls web services on all the other servers in the farm telling them to update themselves.  It basically looks up the server list in a database, and walks through the list, calling the "refresh" web service on each of the servers.

I don't mean to be negative, but I don't think this is anywhere close to something that could be usable for a production server environment.  Here's why:

- In a production environment, the server list typically isn't in the database.  It's managed by administration tools like Application Center 2000, or it's managed by your hardware load balancer.  And when a server goes down, the load balancer knows about it - the database list doesn't.  Keeping this separate list is unworkable unless you can script quite a bit of updating code from the load balancer.  
   
- Suppose server 1 gets an update, and server 3 has just gone down.  While server 1 is walking through the list of servers, it calls the refresh function on server 3.  Depending on the failure situation server 3 is in, this call might seem to be accepted, but not respond...which would cause the call from server 1 to timeout.  I could have *more than a minute of cache incoherency* between servers 1 and 4.  
   
- Suppose server 1 gets an update, writes it to the database, and is about to start walking through the list of servers, when suddenly it goes down for some reason.  Servers 2-4 will never know about the update.  We now have a potential for *indefinite cache incoherency*.

And in addition, this solution suffers from the problems discussed in my previous post.  It may seem like this is all nitpicky, but these are the things you have to worry about when building a system which must run reliably and ensure data consistency in the face of multiple failure modes.

I'm looking forward to seeing what [Justin has come up with](http://pinetree-tech.com/weblog/archives/2002/12/19.shtml#i_feel_your_pain_simon) - this is an interesting problem, without a simple answer!
