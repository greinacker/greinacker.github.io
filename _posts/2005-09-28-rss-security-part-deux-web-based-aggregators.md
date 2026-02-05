---
layout: post
published: true
title: RSS "security", part deux - Web-based aggregators
date: '2005-09-28 17:43:05 -0600'
categories:
- Uncategorized
tags: []
---
Last time [I wrote about this](/gregr/weblog/2005/09/08/rss-security/) (seems like yesterday, but it's actually been a while!) I talked a bit about security for RSS feeds, and in particular authentication, authorization, and encryption.

At the end of that post, I promised to follow it with another post talking about how an online aggregator should be dealing with this stuff. So here we are. :-)

There are a number of problem areas for an online, web-based aggregator when dealing with authenticated feeds (that is, feeds that require authentication to access). I'll take them one at a time.

**Dealing with URL's and credentials**

This is the most visible problem with some online aggregators, and the one that has given authenticated feeds a bad name. Or more correctly, given online aggregators a bad name.

The fundamental problem here is that the aggregator needs to access the secured feed on behalf of the user, which means it needs the user's credentials for the feed. So immediately we have a trust issue, but we'll assume we're past that.

Some aggregators in the past have used the following "URL" format to access feeds that require credentials:

> http://user:pass@www.example.org/thefeed.rss

This is a shortcut way to save a URL with "embedded" credentials - but here's a secret.  It's not really a URL.  It's just a shortcut way to mark it up.  When the request goes out on the wire, it doesn't look like that - it gets split into separate credentials and URL, and the authentication handshake actually happens behind the scenes as you'd expect.

But, for aggregators that don't support credential management, this was a cheap easy workaround to access feeds that require credentials, if your users were clever enough to figure out this shortcut format.

But here's the problem.  Users routinely expose their OPML files to themselves, their friends, their blog, or wherever else.  And in this case, guess what would show up in the OPML file?  Yep, that whole credential-embedded-URL-thing.  Not good.  If a user puts that OPML on his blog as a blogroll, he's basically advertising his username and password for that feed to the entire world...and the worst part?  *He probably didn't know he did it*.  Users will go to some effort to protect their private information - but not if they don't know they're exposing it.

How to fix this?  Don't build an aggregator this way.  Prompt for credentials in separate fields on your interface, and store them separately.

**Content isolation**

Big problem \#2 is the fact that a secured feed may have different content for different users.

Fundamentally, web-based online aggregators work by retrieving each feed once, and distributing that content to all of their subscribers.  For unsecured content, given a particular feed, the content in the feed will be the same if you retrieve it multiple times, so you only retrieve it once.  This is, in general, very efficient for an online aggregator.

But suppose I have a feed that requires authentication, at

> http://www.example.org/thefeed.rss

If I access this feed with my credentials, and you access the feed with your credentials, we may get different content.  This is key.

What does it mean?  Content from secured feeds generally needs to be isolated to the particular user it has been retrieved for - and not shared with any other user (unless they're sharing the same credentials).

**Indexing**

Problem \#3 is related to indexing content.  This one is easy...basically, if you retrieve content using a user's credentials, that content may be private - and thus must not be indexed in a shared index store.

Incidentally, NewsGator Online follows the best practices outlined in this post.  It supports separate credential management, it sandboxes/isolates content, and does not index private content.

So that's it for this chapter of the RSS security saga.  I'm not sure what the next chapter should be about - are we done?  Let me know what you think!
