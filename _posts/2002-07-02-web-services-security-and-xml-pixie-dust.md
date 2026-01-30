---
layout: post
status: publish
published: true
title: Web Services security and XML Pixie Dust
date: '2002-07-02 10:16:56 -0600'
date_gmt: '2002-07-02 17:16:56 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *It's an article of faith right now in the web services realm that security is the major roadblock. We're all sitting around drumming our fingers on the table, the story line goes, just waiting for consensus to emerge from that cloud of dust the standards-makers are kicking up.*
>
> *I don't think its a bad idea to wrap XML around this stuff. But I'm not convinced that will solve the hard problem. What's hard is that security technologies are just a royal pain in the ass to deal with.  \[*[*Jon's Radio*](http://radio.weblogs.com/0100887/)*\]*

I agree with most of this.  It seems so many companies are paralyzed, wondering how they're supposed to secure their web services, and hence are holding off on delivering them.  Standards such as WS-Security are necessary and a good thing, but we can still deliver web services in the meantime; and secure them with the transport (HTTP) we've understood for years.

There are large companies using HTTP transport security for web services - examples that come to mind immediately are Microsoft (with their [MapPoint.NET service](http://www.microsoft.com/mappoint/net/)) and Galileo International (announced [travel web services](http://www.prnewswire.com/cgi-bin/micro_stories.pl?ACCT=121034&TICK=GAL&STORY=/www/story/06-03-2002/0001739482&EDATE=Jun+3,+2002)).

My point to all this?  Deliver your services.  Use transport-based authentication for now, until there's a widely-adopted standard.  Here's even [some code](/gregr/weblog/2002/06/26/web-services-security-http-basic-authentication-without-active-directory/) to get you started.
