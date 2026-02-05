---
layout: post
published: true
title: Atom feeds and well-formed XML
date: '2004-01-12 22:47:44 -0700'
categories:
- Uncategorized
tags: []
---
[Nick](http://nick.typepad.com/blog/2004/01/feeddemon_and_w.html) and Brent ([here](http://inessential.com/?comments=1&postid=2770) and [here](http://inessential.com/?comments=1&postid=2774)) have announced that FeedDemon and NetNewsWire will have strict parsing for Atom feeds, meaning non-well-formed feeds will not parse in those products. I totally understand their position, and sympathize with their arguments. However...

NewsGator 2.0, and all of the NewsGator editions being shipped as part of NewsGator Online Services on January 19, will parse Atom feeds using a very similar parser to that used for RSS; that means that most "questionable" feeds (of which there are a LOT) will parse ok.

The vast majority of our customers don't care about well-formed XML - they care about getting information. Our tools are designed to make that happen.
