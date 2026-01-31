---
layout: post
status: publish
published: true
title: Web Services Authentication with .NET - Sample
date: '2002-06-26 14:58:35 -0600'
date_gmt: '2002-06-26 21:58:35 -0600'
categories:
- Uncategorized
tags: []
---
A while ago I [preached](/gregr/weblog/2002/06/09/web-services-security-2/) a bit about using transport-based authentication with web services, rather than custom header-based mechanisms.  Well, after a number of requests, I've posted a [sample](/gregr/weblog/2002/06/26/web-services-security-http-basic-authentication-without-active-directory/) of using HTTP Basic authentication with web services, without using the built-in IIS support for Basic with Active Directory.  The sample is a .NET HTTP Module, which handles the authentication against a custom data store (a XML file in the sample, easy to change to a database or whatever you need).  It will also work in shared hosting environments where you can't even think about ISAPI filters.

I have a working HTTP Digest sample about 80% complete; if there's enough interest I'll finish it up and post it.
