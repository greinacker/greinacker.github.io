---
layout: post
status: publish
published: true
title: RSS and Authentication
date: '2003-08-10 22:01:09 -0600'
date_gmt: '2003-08-11 05:01:09 -0600'
categories:
- Uncategorized
tags: []
---
I see the following kind of thing a lot, talking about authentication with RSS feeds:

> \[...\]  Right now, RSS is all anonymous and doesn't care who you are.  Does ATOM/ECHO/PIE have it in its specs for any sort of authentication, so a person could get customized content?  Maybe an employee vs. a customer could get different content instead of having two different places a person would have to blog from.  What about security?  Sensative data...SSL? \[[Erik Porter](http://weblogs.asp.net/eporter/posts/23443.aspx)\]

What many folks seem to overlook is you *can* do all of this today. You can use HTTP authentication mechanisms, and many aggregators (including, of course, [NewsGator](http://www.newsgator.com)) will support it. It's being done every day, both on the internet and on corporate intranets. And SSL is also supported, if you need an encrypted connection.
