---
layout: post
published: true
title: Web Services Threat Detection
date: '2002-10-02 16:19:38 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
A while back in another life, we considered the idea of a real-time threat detection system for our web services. The idea was we could build (or buy) an infrastructure component that could analyze the incoming bit stream, detect anomalies, and react appropriately. The "anomalies" detected would be along the lines of:

> 1\. Unauthorized customer repeatedly attempting to gain access  
> 2. Repeated requests causing errors  
> 3. Unusually heavy volume of requests coming from a specific customer (have to be careful here, can't shut down amazon.com at christmas time)  
> 4. Repeated malformed requests  
> 5. Lots of other items...

Reactions would be along the lines of:

> A. Cut off a customer's access (realtime)  
> B. Re-route requests to a "honeypot" for analysis  
> C. Notifications (event log, email) for certain detected events  
> D. Other options (throttle requests, notify firewall to block IP, etc.)

This system would have to be blazingly fast; large added latency to the overall request/response could not be tolerated for many applications.  Building a system like this is highly complex and application-dependent; for example, the very existence of a credible threat might depend on the cost to service a request. If it costs more to turn away an evil (but authorized) request than it does to just process it, then you have to make a call.

It also ties in with things like guaranteed levels of service. If you have to guarantee some subset of your customers a certain response time, but you only have so many cycles to spare, then you've got to prioritize your traffic; but your threat detection system must, at the same time, analyze the traffic and help do this prioritization.

Everything I have mentioned here is outside the scope of a "typical" off-the-shelf intrusion detection system, I believe, as it must incorporate logic that knows about my services, the resources they use, and the cost of certain requests. The IDS is still required to detect "normal" attacks; but for service-dependent threats, you need a new system.

Any [thoughts](http://radio.xmlstoragesystem.com/rcsPublic/mailto?usernum=0109056) about this?
