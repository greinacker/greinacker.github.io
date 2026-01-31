---
layout: post
status: publish
published: true
title: A .Net blog tool, 'cause when you've got a hammer...
date: '2002-07-02 10:31:20 -0600'
date_gmt: '2002-07-02 17:31:20 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *Seriously considering writing my own blogging tool as none of the ones that exist meet my stringent requirements:*
>
> 1.  *Open Source*
> 2.  *Produces only valid XHTML*
> 3.  *.Net - well, not mandatory, but definitely a plus, as far as hammer fulfillment goes.*
> 4.  *Uses CSS for style*
> 5.  *Small and fast*
> 6.  *Can be used from multiple locations to edit the same site*
> 7.  *Only requires an FTP-only site, no server-side scripting required, no PHP, SSI, CGI, etc.*
>
> *\[*[*Bitworking.org*](http://bitworking.org/2002/07/01.html#a235)*\]*

A popular idea lately.  ;-)  What I want is dynamic page generation, so if I change something in one of my headers, etc., I don't need to re-generate and re-publish every single page on my site.  Since the FTP upload of Radio is a little flaky for me, this is a killer.  To add to that, Radio actually re-publishes every page in your site when you add a new article on a new day, so it can re-generate the calendar on each page.  Adds to my FTP problem.

I'm ok with server-side scripting (obviously required for the above); I have no problem with having a .NET-enabled server.  And I know this will add some CPU usage to the site; but honestly, the busiest radio weblog ([safersex.org](http://safersex.org)) gets a few thousand hits a day.  Mine gets somewhat less than that.  ;-)  I think I can spare the CPU cycles.
