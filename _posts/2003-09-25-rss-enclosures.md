---
layout: post
status: publish
published: true
title: RSS enclosures
date: '2003-09-25 10:03:45 -0600'
date_gmt: '2003-09-25 17:03:45 -0600'
categories:
- Uncategorized
tags: []
---
Dave Winer on RSS enclosures:

> *[Chris Lydon has](http://blogs.law.harvard.edu/lydon/specialRssFeed) been doing a series of audio interviews on his weblog at Harvard. There are already over 25 interviews, representing 40 separate MP3 files. The archive is nearly 300MB. It's a perfect application for RSS enclosures. \[[Scripting News](http://scriptingnews.userland.com/2003/09/23#When:5:31:29PM)\]*

Eek...any time I see an automatic 300MB download being a perfect application for anything, it gives me pause.

I've read Dave's "[How to support enclosures](http://blogs.law.harvard.edu/tech/enclosuresAggregators)" document. It says aggregators should not download enclosures until the computer is idle, and gives some other guidelines for implementing them. The idea is that the enclosures will be there waiting for you when you get around to looking at them.

Here's my big problem with this, though. The enclosure-aware aggregators I've seen thus far just go happily download all of these enclosures in the background. There's probably an excellent chance the user will never open these files...and yet we're burning untold amounts of bandwidth to download them anyway. Bandwidth isn't free, folks.

[NewsGator](http://www.newsgator.com) will indeed support enclosures in the next release...but it will work a little differently than existing tools. We may not follow Dave's recommendations on how to support enclosures to the letter, as our application is unique, and the user experience is different from most other tools...but we believe the user experience will be satisfying, and give users the flexibility to do what they want. Stay tuned.
