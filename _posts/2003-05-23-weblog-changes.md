---
layout: post
published: true
title: Weblog changes
date: '2003-05-23 15:15:30 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
I've changed a couple of things about this weblog.

First, in the referrer listings I keep with each post, I am now filtering out search engine referrers. They were not only filling up the lists, but there were an interesting problem with it. I had one post a while back where someone searched for "google toolbar", and went through enough pages in google to get to my site. Now, the posted article had nothing to do with the google toolbar, but happened to have both words in it. When this first visitor came in, I logged his referrer, and displayed on that page "Google search results: google toolbar" or something like that. Well, of course this was indexed, which sent more traffic to that post from people searching for that phrase, which logged *those* referrers...and pretty soon it had wormed its way to the top 2 or 3 hits in google for that particular search. Not really a good thing, since my post had nothing to do with what those people were probably looking for.

I may add search referrers back later (I'm still logging them, just not displaying them) but in a different way...I'd show the search terms, and aggregate together all the queries for those terms into a single line.  So no matter how many hits we got for "britney spears", it would only show up once.  This code isn't there yet, so for now, they're suppressed. Sorry!

Second, both RSS feeds on this site now support ETags, which should reduce bandwidth a lot. So, if you notice anything strange in your aggregator, or you miss a post (how would you know? hmm) let me know. This site is the test bed, before the code goes to newsgator.com. :-)
