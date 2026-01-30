---
layout: post
status: publish
published: true
title: ".NET vs J2EE - Pet Shop 2.0 Benchmark"
date: '2002-10-29 17:00:47 -0700'
date_gmt: '2002-10-30 00:00:47 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
> *Someone just posted a link to this* [*benchmarking research*](http://www.middleware-company.com/documents/j2eedotnetbench.pdf) *done by* [*Middleware Company*](http://www.middleware-company.com/)* on the* [*WinTech Offtopic list*](http://groups.yahoo.com/group/win_tech_off_topic/)*. Considering Middleware Co. specializes in Java technology training, you'd be skeptical of some skewing in favor of* [*Java*](http://java.sun.com/)*, but all the benchmarks clearly show the .NET implementation blowing the doors off the Java implementation. Not only that, but in less lines of code! \[*[*Drew's Blog*](http://radio.weblogs.com/0104813/2002/10/28.html#a176)*\]*

I finally had a chance to review this research from the Middleware Company.  At a previous job, I had to defend .NET against Java/J2EE, as the company was trying to make a decision as to its technical direction, and they had a desire to standardize on a single platform.  To save you the suspense, I lost this battle, although not for lack of trying.  I subsequently left the company (yes, I'm a bit biased, I suppose, but I wanted to go somewhere where I could leverage my expertise).  Anyway, the Java people at this company looked at the older petshop benchmarks, and weren't impressed - there were too many variables to account for the performance differences.

In this new benchmark, things are probably as close (design-wise) as they're ever going to get.  And we see:

- .NET has dramatically better performance in *every single test*
- .NET requires significantly less code
- .NET requires a far smaller capital expense for equivalent performance

The Middleware Company is a Java training/consulting company - so they themselves are certainly biased.  And in their [own words](http://www2.theserverside.com/home/thread.jsp?thread_id=16149):

> *The TMC team spent 4 months performing this benchmark. They worked 100 hours per week on this and worked every weekend, skipping holidays. Trust me, they were trying very hard to make J2EE win. But in the end, J2EE did not come out on top.*
>
> *TMC had a lot of heartache seeing the results of this benchmark. We internally debated about whether we should post this or not. In the end, we decided to go forward and publish this report.*

'nuff said.
