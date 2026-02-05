---
layout: post
published: true
title: Lightroom and Mac Pro performance - part 2
date: '2008-10-30 18:22:22 -0600'
categories:
- apple
- photography
tags:
- photography
- apple
- lightroom
- mac-pro
---
Back in February, I wrote about the [performance I was seeing with my Mac Pro](/gregr/weblog/2008/02/24/mac-pro-performance/), and compared it to several other machines. My intent was to compare performance between various different machines and configurations...but it had the unexpected side effect of giving me a baseline with which to measure new versions of Adobe Photoshop Lightroom.

This data proved to be quite useful when Lightroom 2.0 was released, and I could test the 32-bit build against the 64-bit build. What I found was surprising.

Just like last time, the basic test was generating 1:1 previews for 211 raw images (compressed NEF format from a Nikon D200), about 1.75GB of files.

First, Lightroom 2.0 32-bit:

Mac Pro, 2 x 2.8 GHz Xeon, 8 cores, 12GB RAM, OS X 10.5.5  
CPU utilization between 350-500% throughout  
Total time 4:57, average 1.41 sec/image

And Lightroom 2.0 64-bit:

Mac Pro, 2 x 2.8 GHz Xeon, 8 cores, 12GB RAM, OS X 10.5.5  
CPU utilization between 500-550% throughout  
Total time 7:06, average 2.02 sec/image

So the 32-bit version on OS X 10.5.5 was actually a bit faster than my previous tests of Lightroom 1.3.1 on 10.5.2, which could be due to either the Lightroom 2.0 upgrade, or 10.5.5 changes.

But the 64-bit version of Lightroom 2.0 totally blew chunks, as you can see. Pretty disappointing, and totally reproducible for me, so I opened a ticket with Adobe. They got back to me saying they could reproduce the problem, and also had a bunch of mumbo-jumbo about how there is more overhead in accessing memory in 64-bit mode (which I'm not sure I believe, but I'm not up to speed enough on the Leopard 64-bit implementation to know for sure).

Well, Lightroom 2.1 was recently released, and here is the data:

Lightroom 2.1 32-bit:

Mac Pro, 2 x 2.8 GHz Xeon, 8 cores, 12GB RAM, OS X 10.5.5  
CPU utilization between 350-500% throughout  
Total time 4:55, average 1.40 sec/image

Lightroom 2.1 64-bit:

Mac Pro, 2 x 2.8 GHz Xeon, 8 cores, 12GB RAM, OS X 10.5.5  
CPU utilization about 400% throughout  
Total time 4:05, average **1.16 sec/image**

Wow - obviously a big change; the 64-bit version now totally rocks. There was something in the 2.1 release notes about enabling SSE extensions in 64-bit mode - sounds like that might have been the bug!

I didn't record the memory usage numbers, unfortunately...but I remember watching during the runs, and the 64-bit version seemed to be using about twice the memory that the 32-bit version did.
