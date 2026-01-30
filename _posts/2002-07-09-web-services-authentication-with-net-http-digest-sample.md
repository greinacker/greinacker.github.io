---
layout: post
status: publish
published: true
title: Web Services Authentication with .NET - HTTP Digest Sample
date: '2002-07-09 08:52:41 -0600'
date_gmt: '2002-07-09 15:52:41 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
I have posted an [article and sample](/gregr/weblog/2002/07/09/web-services-security-http-digest-authentication-without-active-directory/) of using HTTP Digest authentication with web services, without using the built-in IIS Digest implementation and Active Directory.  Like my [previous authentication sample](/gregr/weblog/2002/06/26/web-services-security-http-basic-authentication-without-active-directory/), this one is all managed code, and will work in shared hosting environments.

I think Digest authentication has gotten a bit of a bum rap, and it's not in widespread use.  However, it's a standard, well-documented protocol, and it doesn't require clear-text credential transmission, which means you don't have to require an encrypted channel for some classes of services.  I think it's particularly well-suited to web services, at least until WS-Security has gained widespread acceptance.  Microsoft seems to agree, as they are using Digest authentication for their [MapPoint.NET](http://www.microsoft.com/mappoint/net/) service.
