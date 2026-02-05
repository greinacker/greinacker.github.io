---
layout: post
published: true
title: ".NET Blog tool, continued"
date: '2002-07-02 17:46:34 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *Well, that sort of defeats the whole idea behind content generation and publishing, doesn't it? The whole power of* [*Radio*](http://radio.userland.com/) *is that it's "desktop publishing". Your server doesn't need to be anything except a dumb HTTP server that supports the GET protocol basically. \[*[*Drew's Blog*](http://radio.weblogs.com/0104813/)*\]*
>
> *Except that my web server already has ASP.net. I get a few hundred hits a day. What do I care? :-) I understand what motivates someone like Dave to make it just require FTP and no active server components. He has a monetary interest in working with the largest crowd possible. Personally, I don't have any such need. I'd rather prefer something powerful and dynamic over something static and flaky, but that's just me. :-)  \[*[*The .NET Guy*](http://www.quality.nu/dotnetguy/)*\]*

Exactly!  Let me burn cycles on my server - it has plenty to spare. :-)  As to Drew's [later point](http://radio.weblogs.com/0104813/2002/07/02.html#a116) about caching and page regeneration, I actually don't care too much about complex caching and page generation algorithms for this application.  If I have to re-generate a page every time I get a request, that's ok with me, assuming we're not talking about a huge amount of CPU time (which we shouldn't be).  I'm also willing to have to tweak .aspx files and/or code to customize my site (theme, page layout, etc.), rather than have a complete customization engine...
