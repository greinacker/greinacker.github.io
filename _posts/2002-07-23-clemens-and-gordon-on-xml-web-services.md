---
layout: post
status: publish
published: true
title: Clemens and Gordon on XML Web Services
date: '2002-07-23 18:00:21 -0600'
date_gmt: '2002-07-24 01:00:21 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
**Clemens and Gordon on XML Web Services**

Regarding [Clemens Vasters'](http://radio.weblogs.com/0108971/) article on [Staying sane in an XML Web Services World](http://radio.weblogs.com/0108971/stories/2002/07/23/stayingSaneInAnXmlWebServicesWorld.html):

> *Furthermore, Clemens assumes that XML Schema is the only way to communicate a contract, but my understanding is that WSDL does not have this limitation. I'd also like to suggest that Clemens' rule \#3 is tacitly encouraging people to use .NET DataSets, which I understand to be a first-class interop-killer. And if you don't interop, why were you doing SOAP again?* *\[*[*Gordon Weakliem's Radio Weblog*](http://radio.weblogs.com/0106046/)*\]*

My first comment would be that, in today's world, XML Schema is the de facto standard for expressing types in WSDL.  While you could use another type language, I haven't seen a lot of this in real life.  So I think the article is sound in this respect.

Second, I think Clemens' rule \#3 doesn't necessarily encourage people to use DataSets; I think it just extends his rules to the cases where someone *does* use a DataSet.  However, I certainly agree - DataSets are evil in public, interoperable web services.

Finally, I don't think I completely agree with one of Clemens' rules:

> *5. WSDL is immutable. It never changes. If you change a WSDL description, it becomes a new WSDL description with its own identity (namespace-URI)*

and the ASP.NET corollary:

> *2. If you add, remove a \[WebMethod\] or change any of your \[WebMethod\]s signatures or any of the types used directly or indirectly in any of those signatures, change the namespace!*

I agree with this except for the case where you're adding a method.  Without thinking about this too awfully much, I think adding a new method would not necessarily invalidate the contract, or change the semantics of the existing methods.  In COM, we had to be careful (i.e. we didn't do it) about adding methods, because of the problems inherent with modifying the size of the v-table on the clients.  However, with a semi-connected web services model, I don't see how we could get into trouble adding a method.  At least not mechanically; one could make an argument that you might have clients that never knew the interface changed, but I'm not sure that alone is enough reason to rev an interface.
