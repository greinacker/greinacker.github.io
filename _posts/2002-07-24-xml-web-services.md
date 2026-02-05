---
layout: post
published: true
title: XML Web Services
date: '2002-07-24 08:48:31 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
Regarding my [previous post](/gregr/weblog/2002/07/23/clemens-and-gordon-on-xml-web-services/) about adding methods to web services without changing the version/namespace, [Brad](http://www.quality.nu/dotnetguy/) had a good comment:

> *The thing you have to be careful with is new clients against old servers. While the consequences aren't necessarily as severe (crashing w/ an access violation is bad :), they still need to be planned for. \[[The .NET Guy](http://www.quality.nu/dotnetguy/view.aspx?post=344)\]*

Right, when I wrote my blurb I was thinking about the case where you are directly responsible for every endpoint implementing your interface.  The other case is when you define an interface, and then multiple companies implement your interface in a web service; in this second case, I would agree with [Clemens' rule](http://radio.weblogs.com/0108971/stories/2002/07/23/stayingSaneInAnXmlWebServicesWorld.html) that the namespace should be changed if a method is added, to avoid the problem Brad points out.
