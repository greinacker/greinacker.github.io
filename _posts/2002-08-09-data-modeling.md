---
layout: post
status: publish
published: true
title: Data Modeling
date: '2002-08-09 08:16:25 -0600'
date_gmt: '2002-08-09 15:16:25 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *The original question is "When you model data access, does the model represent the data and its relationships, or does it represent the specific queries you know you wish to make?"*
>
> *The first thing I would like to state is I don't like to think of my data access in terms of queries. I think of my data access in terms of transactions. I might only return one set of data, but I might have performed 10 other queries underneath that builds that set of data.*
>
> *So to answer the first question - I model my data access after the transaction I'm going to perform. I do this for mainly for performance. I used to do object models because the OO guy in me wouldn't let go. But the reality of scalability came crashing down on me.  \[*[*News from the Forest*](http://pinetree-tech.com/weblog/archives/2002/08/09.shtml#how_abstract)*\]*

This is a great read from Justin (only partially quoted above).  I've run into many clients who build their data layer as "one class per table", and I really think that's the wrong way to go in many cases.  If you're trying to build a scalable system, it's all about transactions, baby...and keeping them short (don't hold locks for a long time) and simple (hold as few locks as possible), which the "class per table" system does not inherently lend itself well to.
