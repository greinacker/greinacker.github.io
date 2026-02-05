---
layout: post
published: true
title: Transaction Management with EnterpriseServices
date: '2002-12-01 11:41:08 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
Lots of comments on my [previous post](http://www.rassoc.com/gregr/weblog/2002/11/30.html#a98).  [Ingo says](http://www.dotnetremoting.cc/DotNetCentric/2002/12/01.asp#a356):

> *But what happens, if you later decide that you need distributed TX, probably because another method wants to integrate the addition of a new customer with a post to a message queue? This wouldn't be possible using the code you've shown.*

Right, obviously my example only works with a single RM, and it was intended as such.  The situation you describe is, in my mind, the most pressing argument used to just bite the bullet with automatic/distributed transactions up front, even if you don't need them immediately.

[Clemens asks](http://radio.weblogs.com/0108971/2002/12/01.html#a45):

> *What are you doing with that method signature when you're porting that app to another data provider? What if a future revision of that method wants to add that customer to the database asynchronously and does so by stuffing it into a transactional queue, first?*

I read two parts to this.  First, the transaction queue scenario is as Ingo mentioned above, to which I concede this implementation is for a single RM only.  Second, the oft-pondered question - what if I need to change databases?  Well, there are so many more issues involved in changing a database out from under a real-world application, that I don't give this a lot of weight.  The way to squeeze the absolute best performance out of your database is to leverage the proprietary extensions available in that database; for example, using stored procedures.  And as soon as I do that, I've got some real work to do if I want to switch databases.  Another issue is lock management - if you're changing, for example, between MS SQL Server (lock-based) and Oracle (version-based, last I checked), you need to at least evaluate your transaction locking to make sure you're getting the right result with the required isolation.

All that said, however, you could relatively easily change my signature and implementation with something that uses a generic interface (IMyTransaction, IMyConnection, etc.) and be able to switch data providers from under it.

On Clemens' comments page, [Tomas doesn't like](http://radiocomments.userland.com/comments?u=108971&p=45&link=http%3A%2F%2Fradio.weblogs.com%2F0108971%2F2002%2F12%2F01.html%23a45) my method signature and implementation:

> *I agree this isn't a great way of doing it. For one thing, it's way to intrusive on your objects and methods, and hard to extend.*

I could change the syntax to make this look a whole lot more like automatic transactions.  A method attribute, combined with a single-call hook in each method (or use the undocumented and soon-to-be-not-working-in-1.1 ContextAttribute and associated interception architecture), combined with implicitly "flowing" a transaction through CallContext, would reduce a lot of the requirements.  The example was kept simple to illustrate a point.  We're talking about syntactic sugar.

Morten Abrahamsen has a few [interesting comments](http://radiocomments.userland.com/comments?u=108971&p=45&link=http%3A%2F%2Fradio.weblogs.com%2F0108971%2F2002%2F12%2F01.html%23a45), which I've quoted some snippets from here:

> *Suddenly a new component requires a new execution context (another process ?) and you get a lot of not so fun cross process marshalling to get the SqlTransaction to interact with your component code.*

If this scenario were real, I'd agree, and use a distributed transaction in that case.  However, how often (in real life) do I really *need* a transaction to cross execution context boundaries (we're still talking about a single RM scenario here)?  In my experience, it's not all that common.  And as soon as you do, and start stretching arbitrary transactions across process/machine boundaries, you're prone to "accidentally" holding database locks for quite some time.

> *The fear of distributed transactions is in my experience often driven by the fear of performance losses. However, today the performance loss isn’t all that big, yet it is there!*

If it were all about execution performance, then I'd be all for distributed transactions.  On a typical request, I don't mind paying a small performance penalty for convenience, and I can add cheap hardware to my business tier to make up for this (to a point, then I'm concerned about performance again).  But using a distributed transaction, and an out-of-process transaction coordinator (such as MSDTC), means there is more communication going on, transactions are lasting longer, and thus database locks are being held longer than necessary.  And when you're hitting a wall in database throughput, it's all about releasing locks sooner (assuming your bottleneck isn't CPU or IO).

> *On another note, I always find it interesting when people automatically bind the need for EnterpriseServices with distribution transactions.*

Well, I think for most applications, transaction management is really the only COM+ service being intentionally used.  Not all applications - but most.

> *I feel that there is a big difference between a component that accepts a SqlTransaction object as the first method parameter and a “transactional component”. It’s a conceptual difference, a design difference and an implementation difference.*

I don't understand this comment.  A "transactional component" is one that can/must do its work in the context of a transaction, and affect the outcome of said transaction.  How is the SqlTransaction version and the "transactional component" different?

Ingo also points to a great [article](http://www.gotdotnet.com/team/xmlentsvcs/esfaq.aspx#5.2) that mentions:

> *In the future, Enterprise Services will support the concept of promotable transactions which will begin as a local transaction and will be promoted to a distributed transaction when required.*

NOW we're talking.  That would be awesome.

All in all, don't get me wrong - I like EnterpriseServices.  I'm certainly not knocking the power of distributed transactions, and the convenience of declarative transaction boundaries.  In an application I'm working on right now, I may actually end up switching to using distributed transactions to be able to support MSMQ/SQL transactions together - and let me tell you, I'm going to get to delete a lot of code if I do this.  But for many applications, which use a single RM, I don't think using distributed transactions should be the automatic choice; people should evaluate their needs, and intelligently choose a transaction management strategy.  Local transactions are lean, mean, and effective.  Let's not dismiss them out of hand.
