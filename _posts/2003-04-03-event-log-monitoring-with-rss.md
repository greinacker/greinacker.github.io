---
layout: post
status: publish
published: true
title: Event Log Monitoring with RSS
date: '2003-04-03 15:44:27 -0700'
date_gmt: '2003-04-03 22:44:27 -0700'
categories:
- Uncategorized
tags: []
---
I've written some sample code to generate a RSS feed from the Windows Event Logs. This is very handy for monitoring servers - perhaps a poor man's SNMP monitor. :-)

Here's an screen shot showing it in [NewsGator](http://www.newsgator.com/) (click for larger version):

[<img src="/gregr/weblog/assets/postImages/evrss2.gif" data-border="0" data-hspace="0" data-align="baseline" />](/gregr/weblog/assets/postImages/evrss1.gif)

You can specify in the URL how many entries to return, and which logs to use. For example,

> http://example.org/Rss.aspx?num=20&logs=Application,System

would return the 20 most recent entries, looking in both the Application and System event logs.

[Download here](http://www.rassoc.com/gregr/samples/EventLogRss.zip) - requires ASP.NET. If your server is on the internet rather than local, try it with my HTTP security samples \[[Basic](/gregr/weblog/2002/06/26/web-services-security-http-basic-authentication-without-active-directory/), [Digest](/gregr/weblog/2002/07/09/web-services-security-http-digest-authentication-without-active-directory/)\] to securely monitor the event log of the remote server - very handy for those hosting on remote, dedicated servers.
