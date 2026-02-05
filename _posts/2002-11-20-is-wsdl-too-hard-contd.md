---
layout: post
published: true
title: Is WSDL too hard? Cont'd.
date: '2002-11-20 11:52:34 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
**Is WSDL too hard?  Cont'd.**

A couple of comments from Simon and Clemens:

> [*Is WSDL too hard?*](http://www.rassoc.com/gregr/weblog/2002/11/19.html#a94)*. In response to* [*Greg Reinacker's*](http://www.rassoc.com/gregr/weblog/) [*comments*](http://www.rassoc.com/gregr/weblog/2002/11/19.html#a94) *I didn't say WSDL is hard, I said its cumbersome and unproductive. Come on, its just angle brackets how hard can it be ?? \[*[*Simon Fell*](http://www.pocketsoap.com/weblog/)*\]*

Simon - I didn't actually mean to say that *you* were one of the "oh-so-many people" I talked about...your post just happened to remind me about them.  :-)

> *Hard or not hard -- can we agree on "It's just not enough" ? :) My main problem with WSDL is that it tries to do 2 things (message contract and transport mapping), while it should do 3 things (message contract, service contract and transport mapping), hnowever at the same time, one thing (WSDL) shouldn't do all these 3 things altogether but leave them two 3 separate things: A message contract definition language (defines soap:Body content), a service contract definition language (soap:Header) and a "web services binding language" that maps messages combined with services to transports. \[*[*Clemens Vasters: Enterprise Development & Alien Abductions*](http://radio.weblogs.com/0108971/)*\]*

Clemens hits the nail on the head here.  What he describes as a "service contract" is exactly what's missing from WSDL, in my opinion.  One example is a service that supports WS-Security; I should be able to look at the WSDL contract, and learn that WS-Security is required, and perhaps what form of credentials (certificate, username/password, etc.) are required, and perhaps even additional information such as an authentication domain, so I know *which* credentials to send.  Right now, there's no standard way that I'm aware of to communicate this information.
