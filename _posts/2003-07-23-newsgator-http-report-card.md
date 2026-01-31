---
layout: post
status: publish
published: true
title: NewsGator HTTP report card
date: '2003-07-23 16:35:35 -0600'
date_gmt: '2003-07-23 23:35:35 -0600'
categories:
- newsgator
tags: []
---
Mark Pilgrim recently [posted](http://diveintomark.org/archives/2003/07/22/aggregator_http_tests.html) a set of [feeds](http://diveintomark.org/tests/client/http/) to test proper HTTP support in aggregators. Here's how NewsGator fares. Note that you won't be able to test these yourself, as Mark's test feeds are Atom feeds; this was based on NewsGator 1.3 beta code with Atom support. "Success" below means NewsGator behaved correctly according to the spec.

- 200 - success
- 220 - success
- 300 - success
- 301 - success
- 302 - success
- 307 - eek, this was broken. Fixed for 1.3.
- 320 - success
- 400 - success
- 404 - success
- 410 - not implemented in 1.2, but added to 1.3 (feed will be removed when this status code is returned)
- 420 - success
- 500 - success
- 520 - success
- 403 - success
- gzip - success
- etag - success
- last-modified - success
- authentication - success

The two marked with \* succeeded according to the network traces I have, but I believe the feeds are broken. I'll update this when I hear back from Mark about it.

**Update**: the etag and last-modified feeds are now fixed and working correctly - thanks Mark. NewsGator also succeeds with the new authentication test.
