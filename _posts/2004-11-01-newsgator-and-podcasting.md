---
layout: post
published: true
title: NewsGator and Podcasting
date: '2004-11-01 16:17:12 -0700'
categories:
- newsgator
tags: []
---
With the recent popularity of podcasting, there have been a lot of [questions](http://marc.blogs.it/archives/2004/11/riocasting_or_s.html) [and](http://archive.scripting.com/2004/10/31#When:4:31:08PM) [comments](http://radio.weblogs.com/0001011/2004/11/01.html#a8557) as to [NewsGator](http://www.newsgator.com/)'s support for enclosures. Let me try to clear this up.

**NewsGator Outlook Edition** - supports enclosures in two different ways. By default, it will *not* download enclosures, but rather will put a link to the file in the message body.

However...it can be configured to download the enclosure automatically. To do this, go to NewsGator/Subscriptions, select the feed(s) you want and click Edit. Go to the Options tab, and enable the "automatically download enclosures/attachments" option. That's it - after doing this, enclosures in the selected feeds will be downloaded and stored in Outlook as attachments.

You may want them in your file system instead of in Outlook, so you can auto-sync them to a portable device. There's an Outlook add-in called [Outlook Attachment Sniffer](http://www.rsbr.de/Software/OASniffer/index_eng.htm), which will save these attachments into a folder for you. Many thanks to [Michael Greth](http://weblogs.mysharepoint.de/mgreth/) for pointing this out!

**NewsGator Web Edition** - displays enclosures as a link within the item.

**NewsGator Email Edition** - displays enclosures as a link within the item.

**NewsGator Media Center Edition** - supports on-demand streaming of audio and video enclosures...screen shots are at

<http://www.newsgator.com/ngs/ad_mediacenter.aspx>

The 4th through 7th images are all showing how video content looks when there is a video enclosure in a feed (screen shots are based on the [Channel 9](http://channel9.msdn.com/) feed).
