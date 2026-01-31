---
layout: post
status: publish
published: true
title: NewsGator's ping endpoint
date: '2006-02-14 15:33:45 -0700'
date_gmt: '2006-02-14 22:33:45 -0700'
categories:
- newsgator
tags: []
---
For those who are wondering how to ping NewsGator's system when a feed is updated...the ping endpoint is

<http://services.newsgator.com/ngws/xmlrpcping.aspx>

It implements the standard XML-RPC ping protocols.

This has been up for ages, and is used by [ping-o-matic](http://www.pingomatic.com), [pingoat](http://www.pingoat.com/), [feedburner](http://www.feedburner.com), and others...but I don't believe it's actually documented on the site anywhere. So, rather than my having to dig around looking for it every time someone asks, this will hopefully get it google-able. :-)
