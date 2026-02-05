---
layout: post
published: true
title: Outlook News Aggregator Problems Resolved
date: '2003-01-05 23:13:09 -0700'
categories:
- newsgator
tags: []
---
Whew!  Pretty sure we have [this one nailed](/gregr/weblog/2003/01/05/outlook-news-aggregator/) now.  Many of you were getting a problem where messages would download, but only the title would be shown in Outlook - not the message body.

To fix this, you need to install Office XP Service Pack 2, and then install the December 4, 2002 Outlook 2002 Update.  Both can be found on the [Office Update site](http://www.officeupdate.com/ProductUpdates/default.aspx).  **You must install both updates**.

I have also added a test application [here](http://www.rassoc.com/olnews/oltest.zip) - if you're having problems, download it, extract it to the same directory as olnews, and run it.  It's a console application, and it should add a single message to the "Greg Reinacker's Weblog" folder.  You can use it to make sure the Outlook integration is working correctly.

Thanks for bearing with me here!  This problem was pretty difficult to reproduce - my development machine is up to date with the Outlook updates, so I never saw the problem until you guys brought it up!
