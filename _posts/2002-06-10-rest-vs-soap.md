---
layout: post
published: true
title: REST vs. SOAP
date: '2002-06-10 14:19:30 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> REST vs. SOAP... Each of these battles has the sides well dug in, though the resistance from the non-adopters seems to be stronger than the push from the early adopters. 
> \[[Gordon Weakliem\]](http://radio.weblogs.com/0106046/2002/06/06.html#a62)
>
> Careful... make sure that you count for the large contingent of people who are simply focused on getting their job done.  
> \[[Sam Ruby](http://radio.weblogs.com/0101679/2002/06/06.html#a550)\]

I first heard of REST when Gordon sent me a couple of links ([here](http://groups.yahoo.com/group/rest-discuss/message/1301) and [here](http://www.xfront.com/REST.html)) about it. I wrote some thoughts down then, so I thought I'd post them here and get comments. "He" refers to the author of the linked article.

1\. I'm not sure URI-addressability of services is really that important in real life. In the "old" web model, where documents are served up with HTTP and are hyperlinked to other documents, then sure - everything needs to be addressable. But in the "new" model, where services are available on the net, does it really matter for real-life applications whether I need to write a little SOAP code, or whether I code a URL into my XML document?

2\. He downplays the protocol-independence thing by basically saying, "why would we ever need anything more than HTTP? Look how good it's worked up until now!" Well, in the "new" web, there's a lot of things we need to be able to do that HTTP in its current form just isn't good at, and web services really do need to be able to run over multiple protocols, in my opinion.

A good example of this is transactional services; real-time transaction coordination typically needs to have at least some support built into the protocol.

Another good example is delivery guarantees. If my message absolutely, positively needs to be there, HTTP isn't making any promises for me. But another protocol such as MQ (is that a protocol? Well, close enough for my argument) can make these guarantees for me.

And one last good example is delayed or non-real-time messaging. If I need to get a message out, but I don't necessarily need it to be delivered right this second, HTTP (as a connection-oriented protocol) isn't really going to help me. However, a protocol such as SMTP or MQ could help me out here.

3\. I didn't see anything about complex input documents. If I'm sending a "plan a trip" request, I sure don't want to have to build a query string with all the parameters in it; and in fact, it might not even be possible to do so. Now, in fairness, they do mention a POST method for REST, so maybe it's possible; however, all of the benefits they discuss of the GET-based services are no longer applicable should you go to POST, and hence there is essentially no difference between REST and SOAP at that point.

4\. The envelope-based nature of SOAP allows you to add infrastructure capabilities such as WS-Routing to your system, allowing a message to be routed through multiple points on the network, with each of them potentially operating on the message and passing it on. With a strict URI-based addressing mechanism such as described in these REST articles, such a capability becomes difficult if not impossible.
