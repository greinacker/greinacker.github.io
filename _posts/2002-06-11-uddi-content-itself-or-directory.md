---
layout: post
published: true
title: UDDI - content itself, or directory?
date: '2002-06-11 22:19:15 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
**UDDI - content itself, or directory?**

> *\[...\] The problem is that we've placed UDDI at the wrong point in the protocol stack. It's not the equivalent of a Google; it's the equivalent of the Web. UDDI is the "place" where anyone can post structured references to anything. This is as opposed to unstructured information on the Web. As with the Web, there's another layer of value-added services that will organize, rank and otherwise make sense of this data. It's Google on the Web. It will be services like SalCentral for UDDI.  \[*[*Doug Kaye: Web Services Strategies*](http://www.rds.com/doug/weblogs/webServicesStrategies/)*\]*

Interesting idea, but I don't think I agree.  The web services make up the content in this scenario; UDDI provides a directory of information about the services, including interfaces, category membership, service contract locations, etc.  UDDI should be able to provide the services to organize the data; we shouldn't need a Google for UDDI.  Doug continues:

> *SalCentral has been testing a new in-house tool that crawls UDDI the same way Google crawls the Web. Mike says they've found ~250 valid web services in UDDI, or 42% of those that claim to be there. Many more cool things to come from Lucin and SalCentral. Stay tuned.*

Why do we want separate applications to "wash" the data we get from the UDDI directory?  It seems to me that the UDDI hosts should define a mechanism by which content is periodically scanned, and "dead" information is purged.  This would probably require some changes, but I think it would be well worth it.  In my opinion, a directory full of crap is no directory at all.
