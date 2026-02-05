---
layout: post
published: true
title: RSS and MIME types
date: '2003-09-21 12:15:16 -0600'
categories:
- Uncategorized
tags: []
---
The last [umpteen](/gregr/weblog/2003/09/15/subscriptions-with-feed/#comments) [comments](/gregr/weblog/2003/09/16/more-on-feed/#comments) I've heard regarding "feed:" is that we should be using MIME types instead. But NO ONE has addressed ANY of the problems with MIME types...rather, the comments are all basically saying "MIME types are the right way to do this." Let me describe the MIME problems in more detail here, and if someone has solutions or suggestions, please post them. Two of these problems are deal-breakers.

**Problem 1:** \[severity: deal-breaker\] In order to serve up a file with a specific MIME type, you need to make some changes in your web server configuration. There are a LOT of people out there (shared hosting, anyone?) who don't have this capability. We have to cater to the masses, people - we're trying to drive adoption of this technology.

**Problem 1a:** \[severity: annoyance\] There are even more people who wouldn't know a MIME type from a hole in the head. If Joe user figures out that he can build a XML file with notepad that contains his RSS data (and it's being done more often than you think), and upload it to his web site, you'd think that'd be enough. Sorry, Joe, you need to change the MIME type too. The *what*?

**Problem 2:** \[severity: deal-breaker\] If you register a handler for a MIME type, the handler gets the *contents* of the file, rather than the URL. This is great if you're a media player or whatever. However, with RSS, the client tool needs the URL of the RSS file, not the actual contents of the RSS file. Well, it needs the contents too, but it needs the URL so it can poll the file for changes later. This means that the file that's actually registered with a new MIME type would have to be some kind of intermediate file, a "discovery" file if you will. So now, not only would Joe user have to learn about MIME types, but he'd have to create another discovery file as well.

Remember the goal. We need an easy subscription mechanism for users to subscribe to feeds. We need a solution that will a) be workable with today's tools, and b) be easy to implement for the vast majority of publishers. Using feed: as [discussed](/gregr/weblog/2003/09/15/subscriptions-with-feed/) [recently](/gregr/weblog/2003/09/16/more-on-feed/) meets these requirements.

So please, post your comments. However, if you're going to advocate using MIME types for RSS, make sure you address AT LEAST problems 1 and 2 in your comment. Don't just say "feed: is wrong, you have to use MIME types" - address the real problems. Otherwise, it's all theoretical.
