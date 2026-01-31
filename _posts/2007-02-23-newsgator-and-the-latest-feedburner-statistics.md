---
layout: post
status: publish
published: true
title: NewsGator and the latest Feedburner Statistics
date: '2007-02-23 10:20:38 -0700'
date_gmt: '2007-02-23 17:20:38 -0700'
categories:
- newsgator
tags: []
---
Feedburner [recently published](http://blogs.feedburner.com/feedburner/archives/2007/02/feedburners_view_of_the_feed_m.php) some "engagement" statistics about web-based RSS readers (including, for the first time, Google Reader), which basically show Google Reader having a huge market share, along with My Yahoo! and Bloglines. I wasn't going to comment on this, but after reading some recent articles (including [this one at TechCrunch](http://www.techcrunch.com/2007/02/22/feedburner-releases-major-user-engagement-report/#more-5010), which had incorrect information about [NewsGator](http://www.newsgator.com/) for a while but appears to have been edited), I feel compelled to provide some more information.

The Feedburner data does not accurately reflect usage of NewsGator's products - and I'm going to explain why that's the case.

First - let there be no mistake. Feedburner's "Audience Engagement (Views)" data does NOT count the number of times an article is viewed; it counts the number of times a hidden image (or other "bug") associated with an article is downloaded by a reader. Two thing have to happen to register a "view" – the bug needs to be downloaded, and the retrieval of said bug needs to include a referrer that Feedburner recognizes. In the "typical" (i.e. typical web application) case, this will indeed measure number of article views. But in non-typical cases, it will not.

As you may know, NewsGator is a suite of products. NewsGator Online is one part of that suite, but a good deal of our popularity comes from our clients, including [FeedDemon](http://www.newsgator.com/NGOLProduct.aspx?ProdID=FeedDemon), [Inbox](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NewsGator+Inbox), [NetNewsWire](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NetNewsWire), [Go!](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NewsGator+Mobile), and others. We also have tons of users using our private label and enterprise products, but I'll concentrate on the consumer segment for the moment.

So let me go through this and tell you where Feedburner's "engagement" data will be picked up, and where it will not.

Feedburner data collected: NewsGator Online's web reader in most viewing modes, mobile HTML reader in certain configurations

Feedburner data NOT collected: NewsGator Online's web reader in some viewing modes, FeedDemon, Inbox, NetNewsWire, NewsGator Go! (all versions), mobile HTML reader in certain configurations, POP reader, and some other smaller applications.

Basically, FB is only counting ONE application out of a large suite of apps that all talk to each other. Many of our users use a desktop application as their primary reader, and use NewsGator Online occasionally when they're away from their desk (and since these applications all sync together, this is completely seamless for them). This is really a testament to the power and popularity of using a rich desktop client. In any case, though, a huge number of our users and their interactions are not being counted.

Aside: NewsGator's system also powers hundreds of thousands of users on our [private label system](http://www.newsgator.com/privatelabel.aspx), on sites such as USA Today, Denver Post, and Newsweek. These applications are also not counted in FB's statistics. Ditto with our [enterprise](http://www.newsgator.com/enterprise.aspx) [applications](http://www.newsgator.com/enterprise-on-demand.aspx) – hundreds of thousands of users not counted. But back to consumer, the focus of this post. :-)

Shortly before the FB report came out, Pheedo also published a [market share report](http://www.pheedo.info/archives/000401.html), based on subscriber count information. In THAT data, our clients (at least a portion of them, those operating in sync mode) would indeed be counted. That data shows us as the largest system in existence, by subscribers. In conjunction with the other data, this tells us that a LOT of people are using our multitude of client (and other) applications to consume content.

So sure, our web application might not rank all that high in "engagement" (as defined by Feedburner) – but that’s because a huge number of our users choose to use our highly compelling client applications such as FD, NNW, Inbox, etc. Those users also occasionally use our web application, but not typically as their primary reading experience.

So don't believe everything you read – Feedburner's new "engagement" stats only tell part of the story - and for sophisticated multi-application systems like NewsGator's, systems that bridge the gap between the desktop and the web, they are very misleading.

And finally, a bit of news...within the next week or so, we're going to release a new beta of NewsGator Online, which is dramatically faster and full of ajax-goodness (which helps a lot with that super-fast user experience). This is the platform upon which we will build the next generation, which I [talked about](/gregr/weblog/2006/06/29/newsgator-platform-roadmap-part-ii-a-look-forward/) back in June. So stay tuned - I'll post more details about the beta as soon as it's ready for you to use.
