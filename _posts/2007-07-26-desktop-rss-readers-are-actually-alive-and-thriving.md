---
layout: post
status: publish
published: true
title: Desktop RSS Readers are actually alive and thriving
date: '2007-07-26 10:34:53 -0600'
date_gmt: '2007-07-26 17:34:53 -0600'
categories:
- newsgator
tags: []
---
Richard MacManus wrote an article on his blog called "[Desktop RSS Readers Are (Nearly) Dead](http://www.readwriteweb.com/archives/desktop_rss_readers_are_nearly_dead.php)", and went on to show some survey results and discuss some Feedburner data. But as the company who builds and sells the most popular desktop RSS clients in the world, I feel compelled to point out some flaws in his logic.

First, of his survey results, he says:

*"Web-based Readers are up 7% and desktop Readers are down 6%."*

The real problem here, IMHO, was that users had to choose ONE option in the survey. I took the survey myself, and when faced with the question, I chose web-based reader...however, I had no way to indicate that I also use a desktop reader (FeedDemon) and a mobile reader (NewsGator Go!) quite often. I had to make a random choice between the three. In this world where people use multiple computers and devices, it's hard to choose just one option.

And second, is this analysis of Feedburner data for Read/Write Web:

*"...the top desktop RSS Reader in R/WW's Feedburner stats is NetNewsWire. It's ranked 12th overall, well behind Google Reader, Bloglines, Rojo and other browser-based Readers."*

This is also fatally flawed data. The most popular desktop clients (NetNewsWire on the Mac, and FeedDemon on Windows) will install by default in synchronized mode, which means they are getting their content from NewsGator Online, rather than directly from the source. When Feedburner reports statistics, it will NOT see any data at all for the desktop applications. The data is pulled into the NG/Online platform, and distributed through the NewsGator API's to the clients...so Feedburner's system is unaware of any of this.

Hope this clears things up. I think much of the the "drop" Richard is seeing in desktop client popularity is most likely due in large part to the way the new desktop clients retrieve data - and unfortunately that is very difficult to measure from the outside using tools like web log analysis or Feedburner.
