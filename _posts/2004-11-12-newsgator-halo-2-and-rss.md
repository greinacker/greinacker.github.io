---
layout: post
published: true
title: NewsGator, Halo 2, and RSS
date: '2004-11-12 15:23:56 -0700'
categories:
- newsgator
tags: []
---
There have been a whole lot of posts about Halo 2 being released...but [Scott Hanselman's post](http://www.hanselman.com/blog/PermaLink.aspx?guid=4deb3ddd-8211-46fc-9cef-f6154785c1fe) about getting game stats via RSS certainly caught my eye.

[Tom Walker](http://www.ingeniumtr.com/tom/weblog/) took it one step further...if you look on the left side of his blog, you'll see his latest stats right there in his sidebar.  He's taking the Bungie RSS feeds, and re-publishing the latest two games on his blog, using NewsGator Online's "Headlines" feature. Very cool, Tom!

Here's what you would need to do, in a nutshell, to publish Halo 2 stats (or any other feed's content, for that matter) on your blog:

1\. [Subscribe to the feed](http://www.newsgator.com/ngs/subscriber/AddSub.aspx) in NewsGator Online

2\. Go to the "[Edit Locations](http://www.newsgator.com/ngs/subscriber/Machines.aspx)" section under NewsGator Manager.

3\. Create a new location, perhaps called "Halo feed only". Set the "don't automatically add feeds" option, and click "Feeds" and remove all of the feeds from this location except the one(s) you want to republish.

4\. Click "Headlines", and enable and configure the template to republish the headlines.

5\. Copy the javascript on the headlines page to your blog.

That's it!  I'm using it on [my own site](/gregr/weblog/) for "recent comments" (which shows latest content from my own comments feed) and also "where have I been", which is from a photoblog I'm playing with (more about this later).

Give it a try yourself!
