---
layout: post
published: true
title: Choosing a colocation vendor - overview (part 1)
date: '2011-04-11 16:31:58 -0600'
categories:
- internet
- startups
tags:
- hosting
- colocation
- data-centers
---
There's been a lot of talk the last few days about Facebook's [Open Compute](http://opencompute.org/) project, where they have published info about their servers and data centers. It's interesting reading. But, arguably, not specifically relevant for many folks.

Say you're a startup. You've built the next great thing, you've got a few beta customers, and it's time to get ready for real use. You've dabbled with shared hosting, and have [vowed](/gregr/weblog/2006/12/19/you-never-forget-your-first/) to never do that again. You've thought about virtual private servers, dedicated/managed hosting, and cloud services like [EC2](http://aws.amazon.com/ec2/) or [Windows Azure](http://www.microsoft.com/windowsazure/windowsazure/). But in the end, you've decided you'd rather own and operate your own servers. So you need a home for them.

Unfortunately, there's not a ton of guidance out there for you at this point. There is a lot of superficial advice that Google will point you to, but not a lot that's very useful for the startup CTO. What should you look for in a data center?

This article will talk about some high-level things to think about. Parts 2 and 3 will dig in further into what's really important, and how to plan for the future.

### You get what you pay for

Way back in 2002-ish or so, before I started [NewsGator](http://www.newsgator.com), I had a couple of servers at a mom-and-pop colo shop. I think it was like \$50/mo or something for a couple of servers - just insanely cheap. It was basically a small office suite, with maybe 5 racks of equipment. It seemed a little warm in there, and the only security was the lock on the suite door (meaning I could get to other folks' servers). I wasn't there long, but a friend was - he told me a lot of stories about his servers overheating, and even one time when his servers were down and unreachable for a whole weekend without any notice. He later found that the company had put the entire rack he was in (shared with others) in a truck and hauled it across town to a new facility. Yikes.

### What do I need?

You really want to find a company you trust; someone you can call a partner. You're putting a lot of faith in them, so choose wisely. If you can afford it, go with a top-tier hosting facility in your area. If you can't afford it, think harder about whether you really want to colocate. A few high-level things to think about:

- physical security - who can get into the room your servers are in? How? Once they are in the room, could they get to your servers?
- network - make sure you're comfortable with the internal and external connections to the net, and how traffic is managed in the event of something going down.
- bandwidth - think hard about what you need, both in terms of sustained and burst bandwidth.
- physical space - is there room for you to expand as you grow?
- cooling - your equipment doesn't work if it gets too hot.
- power - can they bring in enough power for your equipment? What happens if there is a grid power outage? How often to they test their generators and other power equipment? Have they ever had an actual power outage?
- maintenance - sooner or later they're going to have to do maintenance on, say, the router you're connected to.
- SLA - they can't guarantee your site will be up, but they can guarantee that you will have power and network access. What does the service level agreement say?
- company - is the company in good financial health? You don't want to have to make an unscheduled move.

Now, when you look at a list like this for the first time, you're probably thinking things like network/bandwidth are the most important to worry about. I did. I spent a lot of time worrying about that. But what I found was that ended up being the least of my worries.

This has all been pretty high-level so far...but in [part 2](/gregr/weblog/2011/04/12/choosing-a-colocation-vendor-network-and-bandwidth-part-2/) tomorrow, we will look at network and bandwidth; then in [part 3](/gregr/weblog/2011/04/13/choosing-a-colocation-vendor-power-and-cooling-part-3/), we'll talk about the big daddy of them all, power and cooling.
