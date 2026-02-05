---
layout: post
published: true
title: NewsGator and .NET installation
date: '2003-01-29 10:38:37 -0700'
categories:
- newsgator
tags: []
comments: []
---
There have been [problems](/gregr/weblog/2003/01/28/newsgator-v08-released/#comments) with the NewsGator 0.8 installation where the .NET Framework would sometimes be downloaded and installed even if it was already present. There is now a new installer on the [download site](http://www.rassoc.com/newsgator), which you can use if you already have the .NET Framework installed.

The problem seems to be in the detection code, which is of course under the complete control of my installer vendor. Hopefully we'll be able to narrow this one down and get it fixed!

A big thanks to all who have been helping with this problem.
