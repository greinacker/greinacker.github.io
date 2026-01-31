---
layout: post
status: publish
published: true
title: NewsGator 1.1 Released!
date: '2003-03-30 22:37:52 -0700'
date_gmt: '2003-03-31 05:37:52 -0700'
categories:
- newsgator
tags: []
---
[NewsGator](http://www.newsgator.com) 1.1 has been released! This is a significant release; many of the most-requested features have been added, and a few bugs have been fixed. You can [download 1.1 here](http://www.newsgator.com/downloads.aspx). And it's a free upgrade for licensed 1.0 users. :-)

Change list (with a few pictures):

- "From" column now shows author if present, otherwise feed name:  
    
  <img src="/gregr/weblog/assets/postImages/ng11c.gif" data-hspace="0" data-align="baseline" data-border="0" />  
   
- "Received" column now shows publish date, if present, otherwise retrieve date
- Feeds which require authentication are now supported:  
    
  <img src="/gregr/weblog/assets/postImages/ng11a.gif" data-hspace="0" data-align="baseline" data-border="0" />  
   
- New message notification (task tray bubble) on Windows 2000 and later  
    
  <img src="/gregr/weblog/assets/postImages/ng11d.gif" data-hspace="0" data-align="baseline" data-border="0" />  
   
- Optional per-feed update frequency
- Option to determine modified-post behavior (RSS guid support), which can eliminate duplicate posts for some feeds:  
    
  <img src="/gregr/weblog/assets/postImages/ng11b.gif" data-hspace="0" data-align="baseline" data-border="0" />  
   
- Initial view setup for OL2002 removed (no longer necessary)
- Subscriptions moved to separate menu item
- Subscription list now sortable
- Proxy bypass on local setting now supported
- Added category support
- Added [xhtml:body support](http://www.intertwingly.net/blog/1299.html)
- Confirmation when deleting subscriptions
- Added user-defined Post Author field
- Updated online help for 1.1
- Added link to tutorial on initial setup screen
- Minor GUI changes
- Trial period reset for 1.1
- Fixed problem where Outlook would not close correctly if user logged off or shut down Windows without closing Outlook
- Fixed NewsPage bug when a feed title or post title contained certain escaped HTML elements
- Fixed problem if a folder exists, but doesn't match because case-sensitive comparison
- Fixed problem with certain feeds (such as Wired News) that vary the posts between retrievals; NewsGator now buffers at least 50 read posts (or 2x) per feed.
- Fixed problem where if publish date was specified with a north american time zone (per RFC822), NewsGator would fail to parse it and revert back to the received date
- Fixed NewsPage problem with folder names containing '/', ' ', and '\\
- Fixed a few other minor problems

 
