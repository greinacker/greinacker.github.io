---
layout: post
published: true
title: NewsGator subscriber counts
date: '2008-02-03 15:06:47 -0700'
categories:
- newsgator
tags: []
---
I've noticed a few posts around the web (here's the [latest](http://db79.com/2008/02/db79-browser-operating-stats-for-2007/)) expressing a bit of confusion about how [NewsGator](http://www.newsgator.com) (and NetNewsWire, FeedDemon, NewsGator Inbox, and NewsGator Go!) subscriber counts are reported. So here's the skinny.

When FeedDemon, NetNewsWire, or NewsGator Inbox are running in stand-alone mode, that is with sync NOT enabled, they will retrieve feeds directly from the source using their own user-agent. When you look in your [Feedburner](http://www.feedburner.com) (or other) stats, you'll see these show up as NetNewsWire, FeedDemon, etc.

When NewsGator Online retrieves your feed, it reports total subscriber count as part of the [user-agent](/gregr/weblog/2005/01/10/latest-at-newsgator/). It's retrieving your feed once on behalf of lots of users.

Now here's the part that causes confusion. When FeedDemon, NetNewsWire, or NewsGator Inbox ARE in sync mode (which is the default mode unless turned off), they will retrieve the content from NewsGator Online's feed store; they will NOT retrieve content from the source. When you look at your Feedburner stats (or whatever you're using to determine RSS reader distribution), these subscribers will be reported as NewsGator Online users.

Related to this, you will never see NewsGator Go! in your stats - this is because Go! only works in sync mode, and always retrieves content through NewsGator Online...and thus subscriber counts are reported as part of the online counts.

If a single user uses (say) FeedDemon, Inbox, Go!, and NewsGator Online all synced together, they'll be reported to you as a single subscriber - not as 4 subscribers.

Folks have asked us if we could split out the statistics, to more "accurately" report statistics for the individual client applications. This is actually harder than it sounds, due to the seamless nature of our sync platform. Our system knows if a user is using, say, NetNewsWire and Go! both; however, it's usually unknown which of those applications a user is going to use to read a specific piece of content in advance. We could report one user for both apps, but this would overstate our subscriber counts. So essentially we compromise, and report them all as NewsGator Online - which is sometimes confusing, but accurately counts users, rather than applications.
