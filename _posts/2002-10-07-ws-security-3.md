---
layout: post
published: true
title: WS-Security
date: '2002-10-07 14:58:44 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *Microsoft Corp. and IBM, which, along with VeriSign Inc., published the original Web Services-Security specification, are now in two camps that have contrasting views over what should be done with the specification, also known as WS-Security.  \[*[*eWeek*](http://www.eweek.com/article2/0,3959,590669,00.asp)*\]*

Microsoft and IBM disagreeing?  Ah, the world is coming back to normal.  Maybe the stock market will bounce back now, too.

Seriously, though, there is something missing from the WS-Security spec, as I see it.  When I want to access a web service secured via WS-Security, I have no way of knowing that it uses WS-Security, and even if I do, I don't necessarily know what type of credentials I need to supply (username/password, certificate, etc.), and I don't know if I am required to encrypt and/or sign the message.  Perhaps this information should be published as WSDL extensions.  The article referenced mentions IBM wants encryption-related WSDL extensions, but doesn't go into any more details.
