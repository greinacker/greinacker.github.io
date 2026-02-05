---
layout: post
published: true
title: Debugging with HTTP Authentication Modules
date: '2002-10-20 18:37:34 -0600'
categories:
- Uncategorized
tags: []
---
I've gotten a bunch of e-mail recently, asking how to use the debugger when using my [Basic or Digest authentication HTTP modules](/gregr/weblog/misc/samples.html).  The problem is, if you disable Integrated Windows authentication on a virtual directory, the VS.NET debugger will be unable to start debugging within that vdir.

Here's what I do. Say I have a virtual directory FooService; I create a subdirectory (not a vdir) under it called 'basiconly', for example.

   /FooService  
      /basiconly

Inside basiconly, put the pages that you want to be secured.

The FooService vdir has Anonymous and Integrated Windows Auth turned on. The basiconly directory has only anonymous enabled.

The debugger will start successfully because it can access the root of the vdir using windows auth. And when you browse to the secured pages within basiconly, access will be authenticated and you can watch the whole thing in the debugger.
