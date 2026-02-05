---
layout: post
published: true
title: RSS "security"
date: '2005-09-08 19:20:54 -0600'
categories:
- Uncategorized
tags: []
---
I was on a call the other day with some folks in the industry, and someone made a comment to the effect of "we really need to come up with some kind of solution for securing RSS feeds - then we can really do some cool stuff." Before I could get on my soapbox, someone else on the call concurred with the first person.  When I mentioned that this stuff has been figured out already, and started describing the existing widely-used mechanisms, they were both a bit surprised, and suggested I write something about it.  So here we go. :-)

There has been much talk about "RSS security". The problem is, that's such a vague term, and you can't really make much progress until you actually break that down into what you really mean. So let's give that a shot.

When most folks are talking about security with RSS, they tend to mean three things (or any combination of these):

**authentication**

**authorization**

**encryption**

Let's take these topics one at a time.

**Authentication** - this basically means that you want to be able to identify the user who is requesting your feed. There are well-known solutions here - in particular, the tried-and-true HTTP authentication mechanisms, including Basic and Digest. These are the same authentication mechanisms we use on the internet for subscriber-only web sites, and they are equally applicable to RSS.  Behind the firewall, you could add NTLM/Kerberos authentication for Windows networks.

Most mature RSS aggregation tools (NewsGator Online, NewsGator Outlook edition, FeedDemon, NetNewsWire, lots of others) support these widely-accepted authentication mechanisms.

And for those using Windows servers, I've even written some [sample code](/gregr/weblog/misc/samples.html) for .NET that implements these protocols on the server side, without using the built-in IIS implementation with Active Directory.

**Authorization** - this means that once you know who the user is, should they be allowed to access the content they are requesting?  This is the easy part...once you've authenticated the user requesting the feed, you know who they are, so you can now decide whether they should be allowed to access the content.  Again - just like regular web sites.

**Encryption** - this means that if someone is watching my network with a network sniffer of some sort, or they've managed to insert themselves in the network path between the client and server, then they would be able to see the content going by...so we encrypt it.  The easy way to do this is with SSL - again, exactly how we do it for regular web sites.  And this is usually as easy as adding a certificate to your web server(s), and changing your URL to https.

Piece of cake. Use the mechanisms that have been around for 10+ years securing web content, and you won't go wrong.

"But wait," you say. The authentication and encryption mechanisms I mention above are tied to HTTP.  What if you want to transport a feed via some other protocol?

Well then you'd have to think of something else.  You'd likely see what authentication mechanisms are supported by your new transport of choice, and leverage those.  Hmm.

My advice for now?  Don't worry about it.  RSS today is transported via HTTP.  Sure, you could use other protocols - but almost no one does.  This same argument came up some time ago about SOAP web services...a lot of work went into making sure everything was portable enough to deliver SOAP messages through any arbitrary transport.  But in real life?  [Almost no one is doing it](http://pluralsight.com/blogs/tewald/archive/2005/08/15/14212.aspx).

We don't need more protocols. We don't need yet another encryption standard. We don't need yet another authentication mechanism. Use what works today - it's proven itself already.

I'm going to write some more about this in the next few days - first, about how an online aggregator should and shouldn't implement this, and what to watch out for as a user.  There have been some serious problems in the past with flawed implementations of authenticated feed handling, and it's caused some problems in the community for users...so I'll write about that as soon as I get a chance.
