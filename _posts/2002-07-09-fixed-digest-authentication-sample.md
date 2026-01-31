---
layout: post
status: publish
published: true
title: Fixed Digest Authentication Sample
date: '2002-07-09 18:56:49 -0600'
date_gmt: '2002-07-10 01:56:49 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
Oops!  [Justin Rudd](http://www.pinetree-tech.com/weblog/) brought the following bugs to my attention:

> 1\. When using Opera, the cnonce value is a base-64 encoded value which may contain the '=' character. The original parsing code did not correctly handle this situation.
>
> 2\. Mozilla uses the entire URI (including the query string) for the uri field in the authorization header, whereas Internet Explorer does not. The original parsing code would not correctly handle the '=' characters in the header.

[Both are fixed now](/gregr/weblog/2002/07/09/web-services-security-http-digest-authentication-without-active-directory/) (actually the same problem in the code).  You know, it's funny; I had just read [Brad's post](http://www.quality.nu/dotnetguy/view.aspx?post=286) about people only testing their code on IE; I guess I fell right into that one! 
