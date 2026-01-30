---
layout: post
status: publish
published: true
title: ".NET vs J2EE - Pet Shop 2.0 Benchmark, cont'd"
date: '2002-10-31 22:52:16 -0700'
date_gmt: '2002-11-01 05:52:16 -0700'
categories:
- Uncategorized
tags: []
---
Wow, my [post](/gregr/weblog/2002/10/29.html#a88) on the [pet shop application](http://www.middleware-company.com/documents/j2eedotnetbench.pdf) has generated quite a few comments.  I wanted to clear up a couple of things, and make a couple of comments. 

1\. I personally believe you can write performant, scalable systems with either Java/J2EE or .NET.  It's all a matter of good design.  And I certainly didn't mean to sound like [election coverage](http://www.intertwingly.net/blog/2002/Oct/30#x947)!

2\. Most ".NET people" I know also believe that you can certainly write good, scalable systems with Java/J2EE.  In contrast, many "Java people" don't believe that .NET is even worth considering.  And it doesn't seem to be based on technology - it seems to be fear of Microsoft.  Here's a [great example](http://www.russellbeattie.com/notebook/index.jsp?date=20021027#124122).  [Yikes](http://www.russellbeattie.com/notebook/index.jsp?date=20021027#014906).  Can't we all just get along?  (this is a part of why I've spent so much time working with web services.)

Ok, off my soapbox.  [Larry O'Brien](http://www.thinkingin.net/), author of Thinking in C#, made some interesting and well thought-out [comments](http://www.thinkingin.net/stories/2002/10/31/petShopBoys.html) on the benchmark tests.  He discusses how the development and operational costs are a significant piece of the pie which wasn't covered in the benchmark; he goes on to state that since the pet shop application was not built by "average" developers, the benchmark results not useful.  He then continues:

> *In the past year, I have compared C# and Java performance on hundreds of small, focused programs. Every indication that I have seen is that, currently, the two platforms are quite comparable in run-time performance of strictly comparable code. In my experience, one of the two platforms displays a small performance advantage in the majority of programs, a performance advantage which I absolutely, positively believe to be irrelevant to the issue of business performance in an enterprise-level application.*

Here we come, I believe, to the flaw in his point.  He said he has tested on small, focused programs, and found similar performance between C# and Java.  I will concede that for repetitive, CPU-intensive calculations, there is probably little measurable difference.  However, it is in the platform where things really differ, running real-life applications.  .NET enterprise applications typically execute in the context of COM+ applications, which are typically used to provide (among other things) automatic transaction and JIT activation support.  Java enterprise applications execute within a EJB container such as Websphere or Weblogic, which provides the automatic transaction and activation support.  The real performance difference, I believe, comes from the efficiency of these application servers when running with EJB's, and the length and latency of the code path executed per request.

And it is most likely that difference, I believe, which is causing the performance disparity.  I read many articles, and talk to many people, where the Java experts say something along the lines of "well you shouldn't be using EJB's - they don't perform well."  This leads me to a couple of questions: a) does that mean I have to give up automatic transaction support? Object pooling?  JIT activation?  b) what about the "average" developers who read the docs from the big app server vendors, saying EJB's are the way to go?  Will they never end up with a performant system?

I'm obviously not a Java expert...so if there's a big flaw in what I'm saying, please point it out.  I'm not trying to spread FUD - just trying to have a discussion.  :-)
