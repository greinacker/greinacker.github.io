---
layout: post
status: publish
published: true
title: HTTP Compression
date: '2002-06-19 22:05:31 -0600'
date_gmt: '2002-06-20 05:05:31 -0600'
categories:
- Uncategorized
tags: []
---
> *Ben Lowery posts* [*HttpCompressionModule*](http://www.blowery.org/code/HttpCompressionModule.html)*, an IHttpModule implementation with source that does gzip/deflate HTTP compression. \[*[*Peter Drayton's Radio Weblog*](http://www.razorsoft.net/weblog/)*\] Hmmm, alternatively you could just turn on the built in support for this. \[*[*Simon Fell*](http://www.pocketsoap.com/weblog/)*\]*

The built-in IIS implementation in Windows 2000 and earlier has some limitations, though; the most significant is that if you turn on compression for, say, .asmx responses, then every .asmx response will be compressed.  You may prefer to only compress certain responses.  Further, it is a machine-wide setting; to be truly useful in a typical production environment, IMHO, it needs to at least support turning compression on/off per site, if not per-virtual directory.
