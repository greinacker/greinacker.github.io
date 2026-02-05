---
layout: post
published: true
title: Choosing a colocation vendor - network and bandwidth (part 2)
date: '2011-04-12 10:07:44 -0600'
categories:
- internet
- startups
tags:
- hosting
- colocation
- data-centers
---
In [part 1](/gregr/weblog/2011/04/11/choosing-a-colocation-vendor-overview-part-1/), I gave a quick overview of some things to think about when choosing the data center vendor you want to colocate with. Today, we'll talk about one particular topic, the network and bandwidth.

At a high level, there are three parts of your network: the external connection to the internet, your internal network inside your own firewall or router, and the connection between those two networks.

Other than research, there isn't a lot you can do about the external connection to the internet. But if you go with a top-tier hosting company, and you should, then they know what they're doing, they're really good at it, and they can keep that connection up. You should learn about it, and what kinds of connections they have, the available bandwidth, redundancy, and all that, but once you are comfortable you can worry less. Just make sure your growth projections don't end up with you using an appreciable percentage of their total bandwidth. Also ask about things like their capabilities around things like denial-of-service attacks and such; they should be able to tell you if and how they can help if you run into network-related issues like that.

If you think you will eventually need to be hosted in multiple facilities, and your vendor has suitable ones, then ask about interconnections between those facilities. In many cases you will find they have private connections between their data centers, so ask about the available bandwidth and how that is priced.

On the opposite end of things is your own internal network that you design. I won't touch on that, as only you know your requirements, and your network folks can do a great job there.

It's the middle part that's worth thinking about. Your firewall (or router) is connected to some piece of equipment that's managed by your host. Sooner or later, that equipment needs to have a firmware update, or a new power supply, or something else. It will go down, if only for maintenance; everything does eventually. So think about the effect of that. If downtime is not acceptable, then make sure you can get (at least) two ethernet connections, connected to different equipment on their end. And on your end, you'll need your own equipment which is capable of managing and failing over between those connections as necessary (two firewalls, for example, with a failover mechanism).

And on the topic of bandwidth, you're a grown-up now in terms of hosting. You don't buy 500GB of "bandwidth" per month any more; you pay for usage in megabits per second (Mbps). So if your system sustains 30Mbps most of the time, that's what you will contract for. Your host will measure your sustained bandwidth, probably at the 90th or 95th percentile, and charge you overages if you go over your contracted amount. You may also be able to specify burst capability; so for example maybe you contract for 30Mbps sustained and 100Mbps burst, and they will cap your max bandwidth at your burst rate.

So that's all pretty straightforward, and probably not a lot of surprises there for the startup CTO. Tomorrow, we'll talk about power and cooling in [part 3](/gregr/weblog/2011/04/13/choosing-a-colocation-vendor-power-and-cooling-part-3/) - and that's the part you definitely don't want to miss.
