---
layout: post
published: true
title: NewsGator platform roadmap - Part I (a look back)
date: '2006-06-26 16:36:13 -0600'
categories:
- newsgator
tags: []
---
About 16 months ago, I wrote [NewsGator platform roadmap - where are we going?](/gregr/weblog/2005/02/09/newsgator-platform-roadmap-where-are-we-going/)  It's a little hard to believe it's been that long...it seems like yesterday.  In any case, though, it's about time to talk about this again, as we've come a long way in these last 16 months, and we've got a lot of exciting things planned. And it's worth pointing out that everything I said we were going to do last time, we've done...so the roadmap track record is 100%. :-)

I've been working on this post for a while, and finally hit on the problem that's kept me from finishing it sooner.  There has been so much going on these past 16 months, in so many different business lines, that most folks aren't aware of all of it - and this makes talking about the roadmap difficult. So in this first part of the roadmap, I'm going to take a look back - and try to give you a baseline with which I can talk in part II about where we're going.  Hopefully this won't sound like a commercial - that's not the intent; I just want to give you the background against which the forward-looking post will make more sense.

So let's get started!

**NewsGator Inbox, FeedDemon, NetNewsWire**

What can I say about these products in the last year?  [NewsGator Inbox](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NewsGator+Inbox) got its shiny new name, and a completely revamped synchronization system where just about everything is synchronized.  [FeedDemon](http://www.newsgator.com/NGOLProduct.aspx?ProdID=FeedDemon) and [NetNewsWire](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NetNewsWire) joined the NewsGator family, and both have since had new releases (2.0 and 2.1 respectively) that add synchronization and other online-supported features.  It's been a busy time for all of these apps...and frankly, I've been floored with the excitement level surrounding these products - it hasn't let up even a little.

The synchronization is now tight and fast.  We're on our third-generation sync platform, and it behaves exactly the way you think it would.  Read a post in FeedDemon, and it shows up read in NetNewsWire.  And mobile.  And the web.  And...well, you get it.  We've had a few hiccups with this system (including a [fairly significant outage](/gregr/weblog/2006/04/18/anatomy-of-an-outage/)), but we think we're past the worst of it.  And even with the occasional problem, the net gain for the user from this system is worth it, at least according to most of the feedback we get.

I've said many times that part of our product strategy is to have an awesome user experience on every platform.  People have asked why we didn't just build a cross-platform client application in java or something, that would run on every platform.  Well, we've taken a different strategy.  Rather than take a lowest-common-denominator approach with a single application, we've instead chosen to have best-of-breed on every platform.  FeedDemon (for Windows), NetNewsWire (for Mac OS X), and Inbox (for Outlook) all provide this kick-ass experience in their respective environments, and each is the market leader in its segment.

**NewsGator Mobile**

Mobile is a big part of our product strategy - both for the consumer and enterprise markets.  I think RSS and mobile is a match made in heaven.  BUT - and this is a big but - I think a mobile RSS reader is useless unless it is synchronized with the other devices you use.  No one really wants to read all of their feeds on a mobile device; they want to read some of them there, and they want to be sure they don't have to download something onto their phone that they just read in the office.

We've had our mobile HTML reader for some time, and it's hugely popular.  It's such a simple application, and yet so useful.  But HTML applications alone don't really cover all of the use cases we want to hit.  What about rich functionality, like clipping, emailing, forwarding, and other per-article functions?  What about when you're on a plane, with no wireless service, and you'd like to read your feeds?

Enter our new mobile applications.  The first is [NewsGator Mobile for Windows Mobile devices](http://www.newsgator.com/NGOLMobileBeta.aspx) - this is in beta right now, and delivers a rich and synchronized experience to Windows-based mobile devices.  It's a great user experience - if you haven't tried it, I'd encourage you to download the beta and give it a shot.

**NewsGator core platform**

At the heart of our online system is what we affectionately call the NewsGator core platform.  It needs a cool code name, I suppose...but even with a boring name, it's evolved into an incredibly powerful beast. :-)  And growing [very fast](/gregr/weblog/2006/04/05/new-products-performance-and-the-crazy-month-of-march/).

This platform provides content retrieval and archival, index/search, subscription management, synchronization (including incremental), analytics, and other base-level services.  These services are exposed for our own web applications (such as NewsGator Online), but are also exposed via web services API's (SOAP and REST both).  These API's are the same ones that our own client products use, including Inbox, FeedDemon, NetNewsWire, and our mobile products (more on those below).  Our private label platform also uses these API's.

I talked about the synchronization system above...but one more thing to point out here.  It's fast.  If you're running FeedDemon, with several hundred feeds, it used to take a while to refresh all of those feeds, especially on a slow connection.  But with the latest version, which uses the new sync system, only the incremental updates have to be sent to the client...which means you can refresh hundreds of feeds in [just a few seconds](/gregr/weblog/2006/02/16/feeddemon-20-beta-2/).

**NewsGator Online**

This is our online application, the one you see when you sign in at <http://www.newsgator.com>.  It's growing at a huge rate - as we've added features, and added sync with client products into the core platform, users have been signing up en masse...it's exciting to watch.

Most of what I have to say here is where we're going - so I'll save that for part II.

**NewsGator Enterprise Server**

My roadmap post 16 months ago was the first time we uttered its name publicly...but now [NGES](http://www.newsgator.com/enterprise.aspx) is shipping (actually in its fourth release, 1.3), and it's getting some serious adoption in medium and large companies alike.  Enterprise RSS usage is skyrocketing - the use cases are clear, and and value proposition is compelling.

NGES is usually sold as a shrink-wrap product, to be installed on the customer's servers.  It's also available as an appliance - although interestingly, we don't get a lot of demand for that.  A few smaller customers find the appliance idea appealing...but in the larger installations, and these are six-figure deals we're talking about, we've found nearly all of our customers want to install on their own equipment.

**NewsGator Private Label Platform**

This was a sleeper - it came out of nowhere.  And now it's a significant part of our business.

Publishers today, and other site operators, are very committed to doing what they need to do to drive additional traffic to their sites, and to increase customer loyalty.  The industry has been telling them "build RSS feeds, that's the answer."  This is great - but it's a double edged sword...what happens is many folks consume their content in RSS-enabled consumer portal sites like My Yahoo! and others.

Additionally, there is a conversation happening, in the blogosphere or elsewhere, around the content produced by that publisher - but it's not easy for them to find and surface this information in a way that's useful for their readers.

These problems and others are what the NewsGator Private Label platform was built for.  Publishers (or anyone else, for that matter) can add anything from a complete RSS reading experience for their users, to exposing conversational information (or "hot topics" and the like).  They can either do this in a very custom manner, using the NewsGator platform API, or they can choose a turnkey solution and get up and running in literally days.  Examples of real customers of this platform include [My USA Today](http://my.usatoday.com/news/myusatoday.aspx), and [My Newsweek](http://my.newsweek.com/NGWhiteLabel/Sites/NWk/reader.aspx) - both are powered by the NewsGator private label platform, and they deliver completely different user experiences, designed by the companies themselves.

 

So now we should all be on the same page...in my next post, later this week, I'll lay out the future for all of these product lines.
