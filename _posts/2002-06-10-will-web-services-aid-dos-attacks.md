---
layout: post
published: true
title: Will Web Services aid DOS attacks?
date: '2002-06-10 13:48:30 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *[This](http://www.it-analysis.com/article.php?id) widely published article basically claims that Web Services will be subject to DOS attacks and claims "UDDI will help your attacker to find any services that have been published within the networked environment and then WSDL will provide the details required to make it work." Some fairly serious comments. But do they have grounding?*
>
> *\[[WebServices.org](http://www.webservices.org/index.php/article/view/446/)\]*

I think this isn't nearly as "new" of an issue as they make it sound. I think there are two classes of public web service publishers. First there are those who have already been publishing their information on the internet, and are moving to web services for easier programmatic interoperability; these companies already have to deal with DOS attacks on their exposed systems. The other class of service publishers are those who have been publishing their information in some other way (not on a public network), and are moving to web services and the internet. These companies simply have to learn about and deal with the same issues that everyone else on the web has been dealing with for years. A production web services security infrastructure should at least protect your internal business systems from such a DOS attack; as for the edge servers, the same issues apply here as a typical web server exposing business functions.

As for UDDI helping the attackers find the services, I think that's kind of like publishing your number in the phone book. It might make it easier to find, but a determined attacker is going to find your service anyway.
