---
layout: post
published: true
title: RSS and SourceSafe
date: '2004-11-22 11:38:30 -0700'
categories:
- Uncategorized
tags: []
---
I while back, I wrote [an application](/gregr/weblog/2003/06/25/rss-and-sourcesafe/) to generate RSS feeds from Visual SourceSafe databases. The code was set to expire a few months later, as we were considering building this capability into a product. A [couple](/gregr/weblog/2003/08/05/rss-and-sourcesafe-updated/) [more](/gregr/weblog/2003/10/31/rss-and-sourcesafe-again/) times after that, I posted updated versions with a later and later expiration.

Well, I'm happy to announce that we've decided to release the source code for this application. It requires .NET 1.1, and build files are included for Visual Studio .NET 2003.

This really is a cool app...it runs as a Windows service, and generates RSS feeds based on the change logs in VSS. And now it's free, unlimited, and ready for you to play with. :-) The copyright and license are included in the readme.rtf in the package below - basically, it's an unrestricted modification and redistribution license.

download source: [VssRssSvc.zip](/gregr/samples/VssRssSvc.zip)
