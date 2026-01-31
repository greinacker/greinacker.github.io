---
layout: post
status: publish
published: true
title: More XML Tolerance
date: '2002-08-20 16:02:57 -0600'
date_gmt: '2002-08-20 23:02:57 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
An answer (only partially quoted here) from Justin (red emphasis is mine):

> *That is the long answer - the short answer is I don't know that I **WANT** a tolerant web service. I'm just seeing what they have to offer.*
>
> *Now one place that I have been using a lot of tolerant web services is when it comes to people putting data into our platform. We have a baseline of information that we support. But we are going to allow people to add in extra data (insurance policy numbers, driver IDs, etc.). This has to be open and extensible. I have to be tolerant of stuff coming in that I don't understand. I do this today with XML Schema "any" construct. This is very similar to .NET My Services. What are the colors? blue for predefined required elements, red for predefined optional elements, and black for unknown. .NET My Services won't allow you to use black elements in queries. My system does (well...it will :-) .NET My Services introduced me to HSDL which is much more feature complete than what I was working on. So I dumped mine and moved onto it.*
>
> *That is the best example of a tolerant system that I can think of. But again the tolerance comes from a well known point in the XML. So maybe that isn't a good definition of tolerant.* *\[*[*News from the Forest*](http://pinetree-tech.com/weblog/archives/2002/08/20.shtml#xml_tolerance_part_ii)*\]*

Hopefully I didn't trim this so much that I changed his meaning; I encourage you to read his whole response.  The points I highlighted in red are describing a xsd:any schema element, where the document extensibility ("tolerance") would occur.  This is all I've been advocating...**be extensible, be tolerant, but draw the line in the sand with your schema**.

And hopefully [Gordon](http://radio.weblogs.com/0106046/2002/08/16.html#a129) doesn't have a \#FF0000 filter on his news aggregator.  :-)
