---
layout: post
status: publish
published: true
title: NewsGator Enterprise Server performance testing
date: '2005-07-28 17:11:12 -0600'
date_gmt: '2005-07-29 00:11:12 -0600'
categories:
- newsgator
tags: []
---
A couple of weeks ago, we sent a couple of engineers up to the Microsoft Technology Center in Mountain View, to work with some Microsoft guys to do load/performance testing of the upcoming (real soon now) NewsGator Enterprise Server (NGES).

So first, a big thanks to Zach and Luis at Microsoft who helped with this all week - they were great.  They had ready-made Exchange environments already set up, and ready to go.  Anywhere from 50 users (the smallest test we did) up to 5000 users.  And load simulators running that would simulate actual user activity for these users, to ensure we were running realistic simulations.

We tested the baby-NGES configuration (er, I mean "entry level" - sorry marketing guys!), which runs with the free MSDE SQL engine.  We had projections as to the user counts we could support on this configuration before the connection limit would cripple us...and we were able to adjust those counts.  Turns out we can support more "typical" users than projected.

But the real fun started with the large-user-count Exchange scenarios.  One recommended Exchange configuration now is to run large servers with thousands of users on each one.  So in one test configuration, we tested one large 8-way server, with several thousand users.  The following chart shows the CPU load on the Exchange server:

![](/gregr/weblog/assets/postImages/dino_perf.gif)

The orange line shows the time when NGES was switched on in Exchange sync mode.  Variability in the data is mostly due to the (intentional) randomness of the load simulator.  Basically, what this and other data tells us is that there is little effect to the Exchange server of running NGES against it - which soothes a major concern of many IT folks we've been talking to.

The particular test above was with a single NGES box, with SQL Server on the same machine as NGES.  We have even more data on how many users we support in this configuration, and how many we can support when SQL is moved off-machine.

User mix was an interesting question.  We ended up on a mix of:

90% of users had 10 feeds

9% had 100 feeds

1% had 1000 feeds

And varying percentages of "shared" feeds, where it's a group subscription rather than an individual subscription, or where multiple people happen to subscribe to the same feed.

(aside - we have lots more data than what's shown above, for hours at a time, and much more than just CPU data...this was just the "prettiest" chart I had handy!)

So anyway...like I said, it's getting close.  The amount of pre-release interest in this product has been amazing to all of us...I can't wait until the final version ships!
