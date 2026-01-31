---
layout: post
status: publish
published: true
title: Web Services Threat Detection
date: '2002-10-07 13:10:53 -0600'
date_gmt: '2002-10-07 20:10:53 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
[Justin](http://pinetree-tech.com/weblog/) [writes](http://pinetree-tech.com/weblog/archives/2002/10/06.shtml#web_services_threat_detection):

> [*Greg*](http://www.rassoc.com/gregr/weblog/) *is* [*asking*](http://www.rassoc.com/gregr/weblog/2002/10/02.html#a79) *about something that is near to my heart - Web Services Threat Detection. Or as I've heard marketing people call it (and this is long folks) - how the hell do we keep people from accessing the web services who are deliquent on payment and aren't deliquent because they are disatisfied with the service?*

> *That is one of the problems I tried to solve at my ex-gig. Although it was always unofficial because no one wanted to sanction that project.*
>
> *Unfortunately the best answer I ever came up with is this - I couldn't do it in 100% code. It requires people. I could monitor everything that comes in (who, what, when, and from where). I could check whether or not they were supposed to be sending the particular type of message at that particular moment in time. I could shut that message down or route it to what Greg calls a honey-pot (never heard that before). But when it comes to intelligently doing it - I could never figure out how to tie the above logic into the CRM system. Or if I would really want to. Should my system really try to be smart enough to detect AND take action other than notification?*
>
> *So what did I end up with? Nothing tangible. Just a bunch of ideas. Maybe I'll get a chance to implement them at the next gig...*
>
> *But I do agree with Greg. A system that can do all that he lists is going to be a specialized system. You might be able to find something like what I built on the market. But the intelligence you will have to integrate into your CRM somehow. * *\[*[*News from the Forest*](http://pinetree-tech.com/weblog/)*\]*

Well, actually the specific problem you mention there in marketing-ese :-) seems like the simplest subset of the problem.  If a customer is delinquent on their payment, but they're not dissatisfied, then presumably your automated billing system has already sent them warnings; and at some point the web services infrastructure should just shut them off.  Disable their account.  Unless I'm misinterpreting the described scenario, this is the trivial case.  This would presumably be driven from the CRM system into the web services infrastructure, so there isn't a difficult CRM tie-in required.

The more difficult scenarios, in my mind, are as follows:

1\. You have a customer who has accidentally coded up a bug which calls your service in a very fast loop.  Instead of getting 1 request per second from this customer, you're now getting 25 requests per second.  We need to, at some level, slow down or disable this customer's access until they get it fixed.  Note that discerning this case from the case where the customer is having an unusually busy day is non-trivial, and will probably be business-specific.  As Justin says, this might require input from the CRM system, to look at typical usage patterns for this specific customer, and see if something appears to be amiss.

2. You have a customer who, potentially through no fault of their own, is repeatly making valid requests which trigger a bug in your system, possibly crashing it, or causing abnormally high resource usage.  If the customer keep retrying this request, for example, until he gets a valid response, this might consume huge amounts of resources.

3\. You have a malicious customer, with a valid account, who decides that now is a good time to see if he can take down your system by swamping it with requests.  Now, this will probably be punishable legally, but punishment after the fact is not sufficient to keep our system running today.  We need to stop this attack as it is happening, to protect our system.

4\. The malicious customer in (2) above becomes a bit more clever; instead of swamping you with requests, he repeatedly decrements your inventory, for example. 

5\. A malicious attacker, who has somehow gained access to your system, doing any of the above attacks.

There are also lots of business-specific threats.  For example, if I'm selling cookies with my service, and you don't have to pay until you take delivery, then an obvious attack is someone falsely reserving one box of cookies per minute for a week.  Difficult to detect real-time, but arguably necessary.

Oh and the honeypot thing - the idea here is if you detect an unauthorized intruder, either attempting to gain access or browsing around in your system after gaining access - you redirect him to a "honeypot".  This would be a dedicated cluster of systems, which look just like your production systems, but are not actually production systems.  The attacker can do all the damage he wants, and you can even entice him with seemingly valuable data.  While he's attacking these honeypot systems, you and/or the authorities can begin tracing his location and identity.
