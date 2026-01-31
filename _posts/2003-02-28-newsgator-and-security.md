---
layout: post
status: publish
published: true
title: NewsGator and Security
date: '2003-02-28 16:37:21 -0700'
date_gmt: '2003-02-28 23:37:21 -0700'
categories:
- newsgator
tags: []
---
There have been a couple of posts ([here](http://www.fibiger.org/archives/2003_02.html#000509) and [here](http://www.waxy.org/archive/2003/02/28/evil_rss.shtml)) talking about alleged security vulnerabilities in NewsGator and other news aggregators. The first post supposedly describes a way to have a news post contain an Outlook "virus" that will send an email to people in your address book; the second shows a RSS file containing script which could be annoying or malicious to a user.

I have [posted a response](http://www.newsgator.com/news/archive.aspx?post=3) for our customers on the NewsGator News and Updates page; the gist of this is that for the first problem to actually be a problem, you would have to manually edit your Internet Explorer security settings to loosen the restrictions. 

For the second problem, OL2002 is not vulnerable at all by default. OL2000 will actually execute the script, just as with HTML email messages, but this is easy to disable (and should indeed be disabled in most cases).
