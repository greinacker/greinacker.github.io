---
layout: post
status: publish
published: true
title: NewsGator platform roadmap - Part II (a look forward)
date: '2006-06-29 14:10:34 -0600'
date_gmt: '2006-06-29 21:10:34 -0600'
categories:
- newsgator
tags: []
---
A few days ago, I wrote the [first part of this roadmap](/gregr/weblog/2006/06/26/newsgator-platform-roadmap-part-i-a-look-back/), which basically summarized what we've been up to over the last 16 months.  If you haven't read it yet, [go do it now](/gregr/weblog/2006/06/26/newsgator-platform-roadmap-part-i-a-look-back/) - you'll need it for background.

So now onto the good stuff...what's coming?  What are we thinking?  Where are we going?

**NewsGator Online**

As I said 16 months ago, the proposed feature list is long and distinguished - and it still is.  There is so much to do here...some of the short-term planned additions range from more interactive feed discovery mechanisms (based on the larger community of users and their subscriptions), to completely different user interface paradigms (where a user could potentially select from different options, each catering to a different kind of user).

A larger initiative is around the whole paradigm. Techies aside, users don't want to think about feeds, and subscriptions, and searching for content.  They want to be exposed to content that is relevant and interesting to them, without thinking about all this "RSS" and "feeds" techno-babble.  Disagree?  Go find 5 people you don't know at happy hour, and ask them about RSS - and then come back and let us compare notes.

There are exceptions of course - we all want to subscribe to our friends' feeds, or other specific feeds...but in general, I believe the above holds true.

Given all that, we're really rethinking the way we present information to the user, and the way users discover new information.  We're designing ways for people to participate in a larger community if they wish, and get more value out of the content they consume, at the point they discover it.  While we all have our own set of feeds, and we all participate to some extent in the larger ecosystem, there is a lot of potential in linking people with similar interests to each other.  Some users will continue to use our system as they always have - and others will use it in completely different ways.  We're testing a couple of approaches on this right now - I think it's truly a game-changer.

We'll also continue to add support for more applications and devices - when we chat about this in the office, we refer to this as "NewsGator everywhere".  This is pretty straightforward - wherever you are, whatever device or application you're using, content from NewsGator (either pre-selected or selected by you) will be available to you.  A very recent example - NewsGator has [a plug-in for the new Yahoo! Messenger beta](http://gallery.yahoo.com/apps/442).  I encourage you to try this out, and you'll get an idea where we're going with the NewsGator everywhere concept.

**NewsGator Inbox, FeedDemon, NetNewsWire**

As I mentioned before, the enthusiasm around these products has continued to grow - people obviously see the value in a rich, synchronized, offline-capable user experience for consuming content.  Moving forward, online integration will get tighter, and more complete - ranging from the low hanging fruit like FeedDemon "News Bins" becoming Clippings (and thus synchronize with the entire platform), to more involved features like analytics-related features (recommendations, interest-based surfacing, etc.) and community-related features.

These products will also continue to evolve and innovate in their own right; Nick and Brent, for example, are both pretty open about what they're working on, and what's coming - but the magnitude of the things we're looking at now, from an overall user experience perspective, is pretty amazing to watch.  It's fun to watch them continue to innovate as they always have, and cool to watch them start to take advantage of the resources available to them now.  As we come up with new ways to consume information, we can roll it out on desktop and online clients together in ways that haven't been done before.

And just for a tidbit of news thrown in here, NetNewsWire Lite should be publicly available later today.  How's that for a super-short-term roadmap item!  ;-)

And because all of these products are written using the online synchronization system (via the API), they work with our private label platform, and they can all be reconfigured to talk to an instance of NewsGator Enterprise Server.  More on that below.

**NewsGator Mobile**

As I mentioned, we released a beta of NewsGator Mobile for Windows mobile a few weeks ago.  In the next month or two, that will go gold, and we'll also release a beta of NewsGator Mobile for java-enabled phones.  If you're using a palm-based Treo, a Blackberry, or any of a number of other devices, you'll get a similar rich experience as Windows mobile users.

Moving forward, these kinds of applications is where it's at.  Truly delivering information at your fingertips - but this time, it's not the information that MSN or Yahoo! has selected for you - it's information you've subscribed to yourself, or information you've otherwise indicated an interest in.

What we're focused on here is user experience.  Folks don't spend hours reading on their mobile phones - the key is to provide the right information, at the right time, in a way that's usable.  And this includes audio and video content as well - on certain devices, this can be a great experience, and is becoming more and more important, and we're going to bring that to market.  One of the mobile applications we acquired along with SmartRead was a mobile podcasting client; expect to see that technology rolled into our mobile applications.

**NewsGator core platform**

This is the heart of our entire product line (with the exception of NewsGator Enterprise Server).  Moving forward, we're investing a lot in the platform.  We're building out more support for deep analytics (which we can use to deliver different kinds of user experience), and building out a much deeper metadata engine (which means if a client retrieves content from our system, they'll get much richer data than they otherwise would).  We'll have other ways to "slice" our data to get what you need, without having to subscribe to hundreds of feeds.

The API has been very successful, and we process millions of API calls per day from client applications, web services, and private label clients.  This traffic actually makes up a large percentage of our overall system traffic - which I think is a testament to the popularity and utility of the API.  Moving forward here, we're obviously very committed to the API story, and we'll continue to enhance it as we add platform capabilities.

**NewsGator Enterprise Server**

There's so much activity going on here, I'm not sure I can even do it justice.  NGES 1.3 tightly (and optionally) integrates out of the box with Active Directory, Exchange Server, and Sharepoint.  Coming soon is integration with additional LDAP directory stores, and more out-of-the-box tools for portal integration (it's possible now with the NGES API, but our customers are asking for turn-key examples).  More collaboration features are on their way - the "group clippings" feature in 1.3 was just the tip of the iceberg.  A continued focus on surfacing relevant data - both human and automated mechanisms are in place now, and we're providing additional tools for both.  And as I mentioned before, it's available in appliance or installable shrink-wrap form today...although we've found that shrink-wrap is usually preferred by our customers.

And in the next service release, the last tweaks will be in to allow the clients (FeedDemon, NetNewsWire, Inbox, mobile clients) to synchronize directly with NGES.  This is great stuff - our best-of-breed clients on every platform working with NGES, giving customers the choice they want.

We also will be adding a hosted version of NGES.  Right now, we have our existing NewsGator Online system for individuals and small groups, and we have NGES for larger groups (generally 100 to 100K users).  But for a small business group, say 5-100 users, we don't really have a solution specifically targeted at them.  So we're building a hosted business product, which will have similar capabilities to NGES, but delivered as a hosted solution.  We'll see one version of this very shortly in Japan, and we'll have a different hosted product for the US and European market later this year.

**NewsGator Private Label Platform**

This business has been fun.  We've been surprised at the cool stuff our customers come up with that they'd like from our private label platform, and they're really helping guide this business to be exactly what the market needs.  One example - analytic information is clearly important - that is, surfacing information about a customer's content that they didn't necessarily know.  For example, if CNN publishes an article on their site, we have certain information about that article (readership, link relationships, ratings, etc.) that even CNN doesn't have - and we can leverage that information into a cool and unique user experience for them.  It turns out that that kind of information is very valuable not just to CNN, but to other brands that want to foster a closer relationship with their user communities.

As we add more metadata and more relevance-related information, which will grow as a result of the way we'll be presenting end-user information in our online systems, the information gets even more valuable for our private label clients...and content contributed by users can get a wider and wider distribution (when appropriate).

And as J.B. Holston (our CEO, for those that don't know him) mentioned in a [recent article](http://www.internetnews.com/xSP/article.php/3614426), we're working with selected PR and advertising agencies on using this data to provide a unique and compelling advertising paradigm.  Think of this as conversational advertising - in your user's eyes, it's not just about the product - it's also about the company being an expert, and participating in the relevant conversation.  The private label products allow them to do just that...watch for some large and cool announcements about this shortly.
