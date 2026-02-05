---
layout: post
published: true
title: The story of NewsGator Go!
date: '2006-09-20 11:04:03 -0600'
categories:
- newsgator
tags: []
---
[As](http://www.techcrunch.com/2006/09/19/newsgator-go-for-mobiles-out-tommorow) [has](http://mobilecrunch.com/2006/09/19/newsgator-goes-mobile/) [been](http://blogs.newsgator.com/daily/2006/09/its_go_time_for.html) [blogged](http://www.standingmobile.com/crystal-ball/) [about](http://nick.typepad.com/blog/2006/09/go_newsgator_go.html), and formally [announced](http://www.newsgator.com/news/archive.aspx?post=107), [NewsGator Go! for Windows Mobile](http://www.newsgator.com/NGOLProduct.aspx?ProdID=NewsGator+Mobile) was released this morning.  If you're using a Windows Mobile device, and you haven't tried it yet, go download it now!  I'll wait.

So before I get to the story, a little background about why we think mobile applications are important.  Skip down a little if you're tired of hearing me talk about this. :-)

Many other mobile applications today are designed around consuming content.  But most of them act like they are the sole source of content, and you're going to read it all there.  But that's not how most of us actually work.  The phone or PDA is a companion device to our laptop or desktop, typically.

I remember back a while, when I got my first Windows Mobile phone that could actually synchronize over-the-air to Exchange Server.  No docking, no cables...just up-to-date email, synchronized with Exchange.  A second view of my same mailbox.

It changed my life.

I now have my email everywhere we go, and I'm notified within seconds when someone sends me a new message.  I can respond to it, file it, delete it, whatever I want - all while I'm standing in line at Starbucks. And when I get back to my desk, everything I did is already reflected in Outlook.  Sometimes I think I should get away from my email, and I'm a little too reachable...but that's another story. ;-)

We're doing the same thing for the rest of your content - be it blogs, news, or internal corporate data from your CRM system.  The content you want, on the device you have in your hand, wherever you are.  Laptop, desktop, internet cafe, phone, PDA - it doesn't matter, your stuff is there waiting for you.

So onto the story.  [Back in March](/gregr/weblog/2006/03/14/newsgator-mobile-applications/), we acquired SmartRead and SmartFeed for Windows Mobile, and hired Kevin Cawley in the process.  We started morphing what was then called SmartRead into the application we wanted it to be.

It was a long process - we spent a bunch of time with the application, and identified exactly where we wanted to be in terms of user experience.  And then we went to work.

There were some MAJOR changes to what was originally SmartRead.  We changed the user experience dramatically - one of the requirements was smooth, intuitive, one-handed operation on a phone.  I think we hit that mark.  We also didn't want the phone to "lock up" and be unresponsive while content was being downloaded - check.  Memory usage was a big problem - especially in devices like the Treo 700w, where Palm only left a tiny bit of memory for applications to use.  The list went on and on - but we weren't going to ship before it was ready.

We even made some changes to the NewsGator Online API to more efficiently support the mobile applications.  These changes have made a dramatic difference in memory and bandwidth requirements on the client - and the sync process is MUCH faster than it used to be.

In the end, Kevin's estimate is that the released application is about 10% original SmartRead code, and 90% new.  After six months of engineering, it's quite a different product than it was!
