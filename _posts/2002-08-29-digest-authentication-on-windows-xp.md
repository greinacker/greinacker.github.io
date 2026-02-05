---
layout: post
published: true
title: Digest Authentication on Windows XP
date: '2002-08-29 09:06:29 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *I was working with* [*Greg's*](http://www.rassoc.com/gregr/weblog) [*authentication samples*](http://www.rassoc.com/gregr/weblog/stories/2002/06/09/webServicesSecurity.html) *at work and I discovered a very irritating behavior with IIS on XP Professional. It seems that Digest Authentication is on by default, and the management UI doesn't allow you to shut it off.*
>
> *After some experimentation (and Greg's suggestion), I determined that you can use the IIS ADSI interface to shut off Digest. Here's a little bit of VBScript that does the trick on the root of the site: \[...\]*
>
> *\[*[*Gordon Weakliem's Radio Weblog*](http://radio.weblogs.com/0106046/2002/08/28.html#a133)*\]*

Thanks for posting this, Gordon.  It's worth noting that this behavior only occurs on Windows XP machines that are members of a domain; stand-alone machines do not have the problem.  I have updated the [original article](/gregr/weblog/2002/07/09/web-services-security-http-digest-authentication-without-active-directory/) with this info.
