---
layout: post
published: true
title: RSS and SourceSafe
date: '2003-06-25 23:35:58 -0600'
categories:
- Uncategorized
tags: []
---
Hot out of the RAI lab...RSS feeds generated from Visual SourceSafe. Many development shops use some kind of email notification for source changes - and this is a perfect application of RSS. Here's a screen shot in [NewsGator](http://www.newsgator.com/) with Outlook 2003:

[![](/gregr/weblog/assets/postImages/vss1.gif)](/gregr/weblog/assets/postImages/vss2.gif)

This currently runs as a Windows service, and periodically generates the RSS file(s). To get it running, do the following:

1\. Download ([msi](http://www.rassoc.com/lab/vssrss/VssRssSvc.msi) or [zip](http://www.rassoc.com/lab/vssrss/VssRssSvc.zip)) and install the service. When you install, make sure you enter in a user account that has permission to access the directories where your VSS data lives.

2\. Edit the config.xml file in the installation directory. It should be pretty self-explanatory.

3\. Start the service from the service control manager.

Post comments here - I'd love to hear your thoughts. Also, I'm not sure what the final disposition of this code will be (free, part of another product, etc.)...so this build will expire on August 1.
