---
layout: post
published: true
title: Mac Pro performance
date: '2008-02-24 17:02:15 -0700'
categories:
- apple
tags:
- photography
- apple
- lightroom
- mac-pro
---
I've been torturing myself with the idea of buying a [Mac Pro](http://www.apple.com/macpro/) for a while...I mean, come on - 8 cores, for \$2799? So last week, I finally broke down and pulled the trigger. But of course it didn't stop there - I added another 10GB for a total of 12GB of RAM, and added a couple of disk drives as well.

It certainly "feels" fast - but I wanted to actually make some measurements, to see if it was just my imagination. I could run benchmarks, but that didn't sound like much fun. So instead, I ran a process in Adobe Lightroom 1.3.1 to create 1:1 previews for 211 raw images (compressed NEF format from a Nikon D200), which is roughly 1.75 GB of files.

Here's what I did. And yes, I'm apparently geeky enough that this sounded like fun. :-)

On the Mac Pro and the Macbook Pro, I generated these 1:1 previews in an existing Lightroom catalog with about 12,000 images in it. On all other systems, I generated the previews in a brand new catalog with nothing in it other than these 211 photos.

All of the virtual machines mentioned below are using VMWare Fusion, running on the Mac Pro.

Here are the configurations I ran, and the results:

Mac Pro, 2 x 2.8 GHz Xeon, 8 cores, 12GB RAM, OS X 10.5.2  
CPU utilization between 350-400% throughout  
Total time 5:36, average 1.59 sec/image

Macbook Pro, 2.2 GHz Core 2 Duo, 2 cores, 4GB RAM, OS X 10.5.2  
CPU utilization between 150-200%  
Total time 13:35, average 3.86 sec/image

Dell XPS 420, 2.8 GHz Pentium D, 2 cores\*, 3GB RAM, Windows XP SP2  
CPU utilization about 50%  
Total time 27:00, average 7.68 sec/image

Virtual machine, 2 processors, 3GB RAM, Windows XP SP2  
CPU utilization between 150-200%  
Total time 8:58, average 2.55 sec/image

Virtual machine, 1 processor, 3GB RAM, Windows XP SP2  
CPU utilization about 100%  
Total time 15:12, average 4.32 sec/image

Virtual machine, 2 processors, 3GB RAM, Windows Vista  
CPU utilization between 150-200%  
Total time 8:29, average 2.41 sec/image

\* - not sure why this process on the Pentium D only seemed to be using a single processing core, that's what happened when it ran.

Clearly the Mac Pro is pretty darn fast, and Lightroom interestingly appears to use up to 4 processing cores. The VM data was interesting to see, as well; I can run Windows XP in a VM dramatically faster than running it on my (admittedly old) Dell XPS 400. I wish I had a Core 2 Duo windows machine handy that I could try this on - would be interesting to compare that data with the virtualized Xeon processors on the Mac Pro.

UPDATE 10/30/2008: [Additional data from Lightroom 2.0 and 2.1, on OS X 10.5.5, comparing 32-bit and 64-bit performance.](/gregr/weblog/2008/10/30/lightroom-and-mac-pro-performance-part-2/)
