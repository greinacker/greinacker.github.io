---
layout: post
published: true
title: XML Schema derivation
date: '2002-07-30 13:47:42 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> [*XML Schema derivation by extension superfluous?*](http://www.gotdotnet.com/team/dbox/spoutlet.aspx#nn2002-07-29T13:10-08:00)*. Don falls for derivation by restriction one more time. \[*[*Don Box's Spoutlet*](http://www.gotdotnet.com/team/dbox/spoutlet.aspx)*\]*

While I was just trying to round out some ideas related to the schema and web services [discussion](http://www.rassoc.com/gregr/weblog/2002/07/29.html#a50) we've been having, I came across this post from Don.  Very pertinent to what we're talking about, relative to extending a schema when it contains xsd:any extensibility elements.

When we derive by restriction, we are guaranteed that any valid document matching the new schema will also validate against the original schema.  This is what I was trying to describe below...just not as succinctly as I might have.
