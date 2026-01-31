---
layout: post
status: publish
published: true
title: WS-Security
date: '2002-06-11 08:19:00 -0600'
date_gmt: '2002-06-11 15:19:00 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
**WS-Security**

> *Putting credentials in a SOAP header without an ecrypted channel is a waste of time, but if you have an encrypted channel, you might as well use the channel's authentication support. WS-Security only starts to make sense \[much the same as SOAP\] when you have intermediaries. \[*[*Simon Fell*](http://www.pocketsoap.com/weblog/)*\]*

But part of the potential of WS-Security is to be able to have an authenticated (and possibly signed) transmission without having to encrypt the entire message.  Important, I think, for both the point-to-point case and with intermediaries.
