---
layout: post
status: publish
published: true
title: GUI work is an art
date: '2002-10-31 16:52:54 -0700'
date_gmt: '2002-10-31 23:52:54 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
I don't just mean GUI design - I mean the down-and-dirty work with Windows user interface controls.  I had almost forgotten.

95% of my work today is server-side code, and most of that directly related to web services.  But for the last day or so, I've been working on a managed GUI component for a client.  Basically, it's a ListView control, but with multi-line rows which simulate a variable row height (which is unfortunately unsupported in owner-drawn listview controls).  Each multi-line row gets a single checkbox.  Custom row separators (because the normal ListView gridlines didn't look good with the multi-line rows).  And all of the detailed work to make sure the mouse and keyboard will both work as desired in all situations.

Working with Windows controls, it seems like it's so much trial and error...intercept this message, aha, maybe if I just swallow it things will work, uh oh, better pass that one along...  Remember Spy++?  I haven't used that in years...but dusted it off again today.  It's a black art.  The documentation just doesn't cut it for detailed control work - there are too many details which aren't covered.  Like where is is documented that you're allowed to change the CDIS_FOCUS state for an item to tweak the rendering during a NM_CUSTOMDRAW, but not the CDIS_SELECTED state?  And the brute force method (you know, a blank screen and a WM_PAINT message) is pretty brutal for an interactive control, unless you've got lots of time!

All in all, it was a nice break from my "normal" work...and a good memory of what I used to do every day.  :-)
