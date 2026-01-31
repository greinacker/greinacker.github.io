---
layout: post
status: publish
published: true
title: XML Tolerance
date: '2002-08-19 17:02:07 -0600'
date_gmt: '2002-08-20 00:02:07 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *Don talks about* [*The dark side of tolerance*](http://www.gotdotnet.com/team/dbox/spoutlet.aspx?key=2002-08-17T12:05-08:00)*. While there is no standard that I know of, I have been using a homegrown header for warning users of bad XML. I've built some fairly tolerant web services in the past few months for my own research.*
>
> *For example, I allow you to post data as an element or an attribute, and I'll grab the data from which ever one is present. If both are present, I grab the attribute and warn them that there was duplicate data in an element.*
>
> *If they pass in elements or attributes that I don't understand, I list them all out in a return header for them to see.*
>
> *This all works pretty well. Right now I'm only handling extra data, duplicate data, and pulling data from multiple sources (element or attribute).*
>
> *I did all this to answer a question. How tolerant should I be?* *\[*[*News from the Forest*](http://pinetree-tech.com/weblog/archives/2002/08/19.shtml#xml_tolerance)*\]*

I'm still not convinced.  This related to the [loosely coupled](http://www.rassoc.com/gregr/weblog/2002/07/29.html#a50) [web services](http://radio.weblogs.com/0108971/2002/07/29.html#a47) [discussion](http://www.rassoc.com/gregr/weblog/2002/07/30.html#a51) we've been having, and I'm still not convinced that we shouldn't be doing a schema validation on the input to our web services.  If you want extensibility, use a xsd:any extensibility node; if you want parameters to be optional, mark them as such with minOccurs='0'. 

Justin, what is your reasoning behind wanting to have your web service be tolerant of what might be described as malformed input?
