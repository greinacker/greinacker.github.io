---
layout: post
status: publish
published: true
title: AtomAPI and Authentication
date: '2003-08-25 08:04:25 -0600'
date_gmt: '2003-08-25 15:04:25 -0600'
categories:
- Uncategorized
tags: []
---
[Joe Gregorio](http://bitworking.org/) and [Mark Pilgrim](http://diveintomark.org) have been working on a new implementation of the Atom API, and have come up with a Digest-like authentication mechanism for it. Joe describes it [here](http://bitworking.org/news/New_AtomAPI_Implementation_Release2); here's a small part of the post:

> 1.  Triggered an auth by rejecting a request with an HTTP status code of 401.
> 2.  The server response includes an `Authenticate:` header that includes Atom as an authentication scheme.
> 3.  The client then sends an `Authorization:` header with the scheme of Atom with all the Digest authentication information going into `X-Atom-Authorization:` header.
> 4.  With every request the server sends back an `X-Atom-Authentication-Info:` header with the 'nextnonce'.
>
> Note that this now uses the extensibility of the HTTP authentication scheme. 

Well, ok. But how about this:

1. Change "Atom" to "Digest" in the WWW-Authenticate header, and make a couple of other trivial changes to this response.
2. Change X-Atom-Authentication to Authorization, with appropriate trivial changes.

Poof! You're using digest authentication. Now I know Mark and Joe thought about this, and I was involved in a long painful discussion talking about this. But here's my point: **if you have enough control over your server to implement this "Atom-authentication" mechanism, then you have enough control to implement Digest itself**. With a huge added benefit that many client toolkits understand digest out of the box.

My guess is this - there is a way to implement this for Apache in code, rather than using the .htaccess built-in support. If you can implement atom-auth, can't you just modify your code to implement Digest?

And I even have a [Digest implementation for .NET built](/gregr/weblog/2002/07/09/web-services-security-http-digest-authentication-without-active-directory/), for folks that can't (or don't want to) turn on IIS intrinsic support for Digest.

We're so close. Let's do this right. I bet if there was an implementation built for Apache that didn't require .htaccess or httpd.conf access, then some of the nay-sayers might get on board. Someone care to try it? I did my part - my .NET/IIS implementation is available, free, for anyone to use today...
