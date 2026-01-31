---
layout: post
status: publish
published: true
title: NewsGator Synchronization
date: '2004-01-12 12:59:18 -0700'
date_gmt: '2004-01-12 19:59:18 -0700'
categories:
- newsgator
tags: []
---
As promised, here is the first in a series of posts describing NewsGator 2.0 and NewsGator Online Services.

[NewsGator](http://www.newsgator.com) 2.0, and [NewsGator Online Services](http://services.newsgator.com) (NGOS) provide synchronization capability for your subscriptions. The basic premise - *your subscriptions follow you wherever you go, and you never have to read the same thing twice*. There are three classes of information that is synchronized:

- Subscriptions - so you can add/delete your subscriptions in one place, and the changes will be reflected on other machines.  
   
- Read/unread information - if you download an item on one machine, you won't see that item anywhere else (unless you want to).  
   
- Which machines have which subscriptions - if you use NewsGator for Outlook at home and at work, you may want separate (but overlapping) subscriptions in each place. For example, you may have feeds at work that you can't access at home, since they're behind your corporate firewall.  NGOS allows you to specify where each subscription should apply, and just "does the right thing" when it's time to sync.

The sync system is very easy to use - you just enable the synchronization option, and a wizard walks you through a very short process to set up the initial sync. After the initial sync, the system is completely automatic - you don't have to do anything, or even think about it. It just works.

![](/gregr/weblog/assets/postImages/ngos_sync.gif)

To save bandwidth, only differences are synchronized on each automatic sync. This ensures great performance, even on low bandwidth connections.

You can even (optionally) expose your OPML file publicly. My blogroll on the right side of my weblog is generated automatically using my [public OPML file](http://services.newsgator.com/ngws/opml.aspx?uid=2&mid=4). You can specify which subscriptions should be exposed, and can expose as many OPML files as you like, with different sets of subscriptions.

Beyond NewsGator for Outlook, the sync system works with all NewsGator editions, including Web Edition, POP Edition, and Mobile Edition. If you're away from the office, you can use mobile edition to read a few posts...or read everything on web edition from a public computer.

The API's used for the sync system will be available for any interesting 3rd parties who are interested in making their applications work with our system.

More to come over the rest of the week!
