---
layout: post
published: true
title: NewsGator acquires FeedDemon
date: '2005-05-17 05:50:31 -0600'
categories:
- newsgator
tags: []
---
Yep, the early reports are true (I slept far too late to break the news myself, it seems!).  NewsGator has acquired FeedDemon and TopStyle from Nick Bradbury, and Nick has joined our team full-time.  The [press release](http://www.newsgator.com/news/archive.aspx?post=58) and some [detailed Q&A](http://www.newsgator.com/feeddemon.aspx) are online now, and Nick's own take on the deal is [here](http://nick.typepad.com/blog/2005/05/newsgator_acqui.html).

It's a pretty exciting development for everyone involved.  From my perspective, this is huge...so let me tell you a quick story, one that goes back two and a half years.

Way back in the beginning, we had an [Outlook add-in](http://www.newsgator.com/ngs/Ad_Outlook.aspx?OrgFrom=Business) - and it was immediately popular.  A little less than a year later, we followed with what is now known as [NewsGator Online](http://www.newsgator.com), and thus was born the platform we've been building on ever since.  We now had a presence on Microsoft Outlook, on the web, mobile devices, other e-mail clients besides Outlook, and shortly thereafter even on the TV with Media Center edition.  And all along, we were building on the key insight that people wanted to use *multiple* applications and devices to consume content.

Synchronization was the story, as implmented in our first-generation sync system.  It was lean and mean, and worked.  Read your content in Outlook, the web, your mobile phone, etc., and never have to read the same content twice.  It was a good story, and we spent a lot of time and effort on it.  And it turned out it was true - people *do* want to use multiple applications and devices to read their content.

But it turns out people wanted more than we were offering.  They wanted to use desktop applications as well, and still take advantage of the synchronization capabilities inherent in our other products.  They wanted to use Outlook at work, and use a best-of-breed desktop application at home.  Or vice-versa.  Or maybe they didn't want to use Outlook at all - I've seen it happen. :-)

And to the "why do I need a desktop application" nay-sayers - lots of people swear by them.  Not only is the GUI generally richer than that on a web application, but offline support is a huge feature.  Many of our Outlook customers download news in the morning, and read it on their commute on the train, bus, etc.  The same use case holds for those using desktop applications.

So we built a second-generation sync system, and opened it up to a few partners - most notably Nick Bradbury, who implemented support for it in FeedDemon.  This system worked well, but it had a nagging problem - the actual state (read/unread/deleted) of items wasn't synchronized - only the fact that you had downloaded the item, or marked it read online, was sync'd.  But download an item into FeedDemon, and it magically disappeared from NewsGator Online.  Not exactly the ideal behavior.  Incidentally, our first-gen Outlook sync system worked in a [similar manner](http://newsgator.mykbpro.com/Article_D6BDB.aspx).

So we started working on the next version of the Outlook add-in (which is in a late beta stage right now), and the 3rd-generation sync system and API.  One that would truly provide all of the missing sync capabilities - read/unread/deleted state, flags, etc.  And along about the same time, I posted our near-term [product roadmap](/gregr/weblog/2005/02/09/newsgator-platform-roadmap-where-are-we-going/) - talking about API's, our enterprise products, and what we were doing with the Outlook and consumer products.

Then I called Nick (much to his chagrin, I had managed to collect all of his phone numbers!).  See, we still had a hole in our product line.  We had great coverage of Outlook, the web, mobile devices, even TV's.  But we didn't have a desktop client, and we've encouontered lots of customers who wanted exactly this.  I asked Nick if he'd be interested in joining forces with us in some manner, and he said he would be.  Turns out that Nick's customers had been consistently asking for the same capabilities as those we were building into the next-gen online system...

Many meetings and a few months later, here we are - announcing a deal we're all super-excited about.  Our industry-leading RSS platform company - and the best Windows desktop aggregator, being added into the platform.  What a great story for our customers.

So what happens now?

Most of it's in the Q&A I linked to above.  In a nutshell...within the next month or two, all FeedDemon customers will get a free 2-year subscription to a NewsGator business subscription plan, giving them access to the Outlook edition and other NewsGator products.  And all NewsGator paying subscribers will get access to FeedDemon at no additional charge.  All of this will take effect as of the upcoming FeedDemon release.

And the upcoming versions of FeedDemon will be completely integrated with our online platform, providing seamless synchronization capability...and it will begin integrating lots of other features that are made possible by having a strong online platform to base them on.

Looking out further, we've got some great ideas, and lots of plans.  Nick, as our new Architect, Client Products, will continue work on FeedDemon and TopStyle, but will also be lending his considerable expertise to our other products.  Jack Brewster (who you might know if you frequent the FeedDemon/TopStyle forums) is also joining us to take over support of these products...which should make for a seamless transition experience for our customers.

Please join me in welcoming Nick to our team!
