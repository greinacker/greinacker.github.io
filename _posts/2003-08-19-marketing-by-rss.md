---
layout: post
published: true
title: Marketing by RSS
date: '2003-08-19 18:09:01 -0600'
categories:
- Uncategorized
tags: []
---
Dwight talks about RSS for marketing, and mentions a couple of things he sees as problems:

> I love RSS as much as anyone else, but we don't do anyone any favors when we refuse to take off the rose-colored sunglasses. Chris Pirillo [throws some brickbats at an RSS doubter](http://rss.lockergnome.com/archives/opinion/006658.phtml), but I happen to agree with the doubter on several points:

> - You can't reliably measure exposure via RSS.
> - You can't control how RSS is displayed.
> - RSS doesn't build a user database.
> - RSS is difficult to customize - as a response driver - the way email is.
>
> \[[Take the First Step](http://radio.weblogs.com/0118153/2003/08/19.html#a489)\]

This problem has been discussed before, and I know [Derek Scruggs](http://www.escalan.com/blog/) has built at least one prototype of something that can do subscriber tracking. We're using the same mechanism to power the NewsGator Tips feed, which is customized for each individual user. It's simple really:

1. Get a user request for the RSS feed, say /rss.xml
2. Redirect the request with a 301 permanent redirect to /rss.xml?user=123456789

There you go. If you assign users an individual ID, you can track them to some extent. You can't just look at how many times the feed has been retrieved (not relevant), but by looking at all the data in aggregate, you can tell how many users you have subscribed, the date they subscribed, the approximate date they stopped reading, and other useful data.  You can tell, with pretty decent accuracy, how many individual people are reading each post.

And if you are lucky enough to know something about an individual subscriber, you can customize the feed just for them. For example, with the NewsGator Tips feed, we trickle out tips one per day, based on the date you subscribed. It's not hard - you just need a smart server, and your clients need to react correctly to certain HTTP status codes.
