---
layout: post
published: true
title: NewsGator platform roadmap - where are we going?
date: '2005-02-09 18:12:43 -0700'
categories:
- newsgator
tags: []
---
We have so much going on here at NewsGator, and so little of it has been talked about in public. Well, that's about to change. I'm going to lay out our near-term product roadmap for you here, including our upcoming NewsGator Enterprise Server, code-named "Dino".

This is a big deal for me - I've always been a big fan of developing in secret, running beta programs under NDA, and so on. But in this case, I think it's time to open the kimono, and talk about what we're doing, and where we're going with our four product lines.  (Four?  Yep...and two of them have never been talked about publicly until now.)

So here it is. We've talked a lot about NewsGator Outlook edition, and NewsGator Online. But not with respect to future plans...mostly just announcing things that have happened. I'll try to give you a taste of what's coming here. And, I'm going to tell you about our upcoming enterprise products, and also the publisher platform we're building.

So enough of the intro...let's talk about the fun stuff!

**NewsGator Outlook edition**

Many have wondered what's going on with our Outlook product, since we haven't done a major release in a while. No worries - it's a critical part of our plans moving forward, and as I [mentioned last week](/gregr/weblog/2005/02/02/newsgator-outlook-edition-whats-coming/ "/gregr/weblog/2005/02/02/newsgator-outlook-edition-whats-coming/"), we're working on the next major revision right now. I don't have all the details right now as to what's in and what's out, but rest assured that we're hearing everything that's being said.

One thing you will definitely see in the upcoming release of NewsGator Outlook edition is a tighter, more effective integration with NewsGator Online. Synchronization will work much differently, and we'll be addressing the common complaints people have with the existing system. And cool features we have in the online system (clippings, ratings, and other new stuff we're working on) will also work in Outlook.

And we're really thinking of this new release as a platform upon which we will be building lots of new features and capabilities on.  We don't intend to let the product "rest" for a year again - we'll be constantly evolving it, and releasing much more often, for folks that want to stay on the bleeding edge.

**NewsGator Online**

Since its [re-launch in October](http://www.newsgator.com/news/archive.aspx?post=48 "http://www.newsgator.com/news/archive.aspx?post=48") (which included free access for certain parts of the system), NewsGator Online has been growing dramatically. We've gotten great feedback on the system, and we're adding features and improving the system pretty constantly. We don't always talk about the new stuff that gets added - sometimes it just goes in, and people can discover it.  The two most recent additions that we did quietly was adding [search capability](http://www.newsgator.com/ngs/subscriber/WebEd2.aspx?mode=search "http://www.newsgator.com/ngs/subscriber/WebEd2.aspx?mode=search"), and adding a [settings page](http://www.newsgator.com/ngs/subscriber/MySettings.aspx?returl=WebEd2.aspx "http://www.newsgator.com/ngs/subscriber/MySettings.aspx?returl=WebEd2.aspx") for the web edition (which lets you automatically mark posts as read, among other things). These are both online now - go try them out!

Moving forward, this platform is extremely important to us, and we're investing a lot in its continued evolution. The proposed feature list is long and distinguished :-), and really contains some things that we believe will drive the industry moving forward.

One thing that's definitely coming (and some of these already exist, although haven't yet been made public) is extremely deep API support.  Our general plan here is to expose nearly everything in NewsGator Online via API, and allow folks to build applications that leverage our platform in unique ways. Anything from simple notifiers, to complete aggregation applications, to some new kinds of apps that haven't ever been built yet, will be possible using our API's.  This is a pretty exciting area - watch over the next few months as we start rolling these out.

And using these API's, you'll see us working closely with quite a few partners, to build cool new products and capabilities.  Some of these are under development already, and I can tell you, some early stuff I've seen is pretty awesome.

**Code name "Dino" - NewsGator Enterprise Server**

We have not talked about this product up to now without a NDA in place...so you can definitely say you heard it here first. :-)

We do a LOT of enterprise business with our Outlook-based product. As we've been working with these customers, we've learned a lot about their needs and issues for information distribution...and what we've been finding is that a desktop-based product alone is not exactly what they need.  Enter Dino.

Dino could be characterized as "NewsGator Enterprise Server", for lack of a better name. Imagine NewsGator Online, picked up and installed on a server behind a corporate firewall. Imagine it also (optionally) connecting with Active Directory and Exchange server. No longer would a system administrator need to go install NewsGator Outlook edition on 3000 desktops; rather, with Dino, they could install a single server, make some configuration choices, and employees will just get "more stuff" somewhere in their Exchange mailbox without having to install anything on their own machines. Outlook; Outlook Web Access; Blackberry; Exchange ActiveSync; all of this is enabled by the Dino/Exchange integration.

Not using Exchange? Not a problem. Dino will have a version of NewsGator Online's web-based aggregator (also also mobile edition, email edition, and media center edition). Many potential customers have asked us about an intranet-based aggregation solution, and Dino fills the bill for this as well.

And with sophisticated indexing capabilities, and integration points with other enterprise systems, Dino can become a central information distribution point for all kinds of content.  All managed in one place, leveraging organizational structure in Active Directory (if available).

Dino of course will have extensive API support, to help customers and partners integrate it into their business systems. Some of these API's will be unique to Dino, but the NewsGator Online API's will be supported on Dino as well. So what this means is cool applications that are written to talk to NewsGator Online can also work *inside* the firewall against the Dino platform. Good stuff.

I could go on and on for pages on this - there is SO much cool stuff going into this product.  We've spoken with a few customers about Dino, and everyone we've talked to has been excited about it. Which makes *me* excited about it!

**Code name "" (uh oh, no code name) - Media Platform**

We haven't completely decided on the marketing name for this, and we don't have a code name for some reason. So I'll call it (here only!) the NewsGator Media Platform (NMP).

We've been working with quite a few publishers, who are thinking pretty hard about RSS and what it means to their business. Many of them are seeing an opportunity to "own" the user experience around RSS-distributed content for a certain set of their users, and these folks have contacted us about helping them build such an experience.

Imagine the Somewhere Post, a newspaper in Somewhere (my apologies if there actually is a newspaper in a place called Somewhere!).  The Somewhere Post might want to integrate RSS content into their own web site for the MySomewherePost experience. Or they might want to build a downloaded application for their loyal readers. And in either case, the user would have choices about what they read, including non-Somewhere content, but Somewhere would "own" the user experience and certainly position their brand in a way that was beneficial to them.

The Media Platform we've built is based on the NewsGator Online system, and we have the ability to deliver a publisher-branded experience to web sites, mobile devices, or even in a custom downloaded application. And with our online platform behind it, we have sophisticated indexing and categorization services available, which makes these applications far more powerful than they might normally be.

We have several publishers in various stages of contracts and/or development, and we'll be making some announcements soon. This is a pretty exciting space - not just for us, but for the publishers as well.  I wish I could tell you more here, but I should wait until we have signed contracts with the publishers we're working with.

**So...**

Lots of stuff going on, as I said.  If you have any thoughts or comments for us, please don't be shy...I'd love to hear from you.  For public comments, just comment here on my blog; and if you'd rather chat privately, [send me a note](/gregr/weblog/contact.aspx "/gregr/weblog/contact.aspx") and we'll get a conversation started.
