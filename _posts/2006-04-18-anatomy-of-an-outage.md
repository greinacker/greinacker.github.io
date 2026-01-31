---
layout: post
status: publish
published: true
title: Anatomy of an outage
date: '2006-04-18 14:20:37 -0600'
date_gmt: '2006-04-18 21:20:37 -0600'
categories:
- newsgator
tags: []
---
The last 12 hours will not go down in the books as NewsGator's happiest hours...as [posted here](http://www.newsgator.com/news/archive.aspx?post=91), there was an outage and NewsGator Online was down for several hours.  On a normal day, I'd be thrilled that "NewsGator" was the \#1 search on [Technorati](http://www.technorati.com/); but not today. :-(

But while this was painful for us, it was painful for our users too.  So I'm going to walk through what actually happened, in quite some detail, and why it took so long to come back online.  And there are still a lot of questions here - our platform/operations folks are on the phone with EMC and Microsoft both as I type this post, trying to get to the root cause of all this.  But I'm getting ahead of myself.

Warning - lots of detail ahead.  Feel free to skip below if you don't want to read all the details.

> **Monday 5:00pm**
>
> A query starts running against the database that contains user information, kicked off by an automated agent job. This query is run periodically, and is used for some reporting data.  It normally takes a minute or so to run...but this time, for some reason (I don't have the details), it was going to block on something and take 300+ minutes.
>
> **Monday 6:00pm**
>
> SQL transaction log files are growing much more quickly than normal, due to the errant query.  It's not yet noticed, however, as it's still below the relatively high log monitoring thresholds we have set up.
>
> **Monday 7:00pm **
>
> I'm sitting in the office with Darryl, who runs our platform team, and owns all of the non-GUI portions of the online platform.  We're noticing large I/O bottlenecks on one file group in one of our databases, and some quick calculations indicate we are at basically 100% of the hardware capacity.  This has been consistent for the past week or so.
>
> We use an EMC fiber-channel SAN for database storage.  The database file group that was running into problems is striped across 20 disk spindles.  We had a plan in place to increase the number of spindles to increase I/O capacity, which was going to happen later this week...but given the data at hand, we decided to schedule it for Monday night.  The immediate plan was to add 10 more disks to the stripe for that file group, bringing the total up to 30, and increasing I/O capacity for the group by 50%.  (For techies out there, we're measuring I/O operations per second; physical disks have a maximum number of these operations they can handle per second, and the SAN caching increases the effective rate in some cases...but generally, the only way to really increase I/O capacity is to add drives).
>
> So...we allocate the extra drives, and begin the re-striping process.  This happens transparently to the applications (i.e. SQL Server), as the SAN has the ability to re-stripe on the fly.  We've expanded storage a number of times, exactly like this, with no problems.  Total I/O capacity is impacted a bit during the process, but everything stays up and running.
>
> Or at least it's supposed to.
>
> **Monday 10:00pm**
>
> System starts throwing intermittent errors when applications try to connect to the database in question.  Monitor alerts are sent.  It's pretty critical, as this database contains all user-related data (such as authentication info) for all system users.
>
> **Monday 10:30pm**
>
> Darryl discovers the errant query (the one that started at 5pm), and terminates it.  At this point the SQL transaction logs are well over 300GB.  SQL starts to recover, but intermittent errors still occur.
>
> **Tuesday 2:00am**
>
> SQL Server shuts down - cause is as of yet unknown, although there are some suspicious log entries prior to the failure.  It automatically restarts, and begins the recovery process to bring the database online, including replaying this huge 300GB log.  Other cluster members don't take over, because the database requires recovery - as opposed to having a server problem.
>
> However, while it's trying to recover, a huge amount of traffic is still coming in from the web sites (mostly API and non-US sites at this time), which causes a large number of SQL transactions.  Some of these transactions deadlock with the recovery process, which causes SQL to terminate again and restart recovery.
>
> At this point, every request coming into the system that hits that particular database fails.
>
> **Tuesday 2:30am**
>
> It's clear by now that the only way to bring the database back online is to eliminate all database traffic.  "Maintenance" pages go up, all sites come down, and the database restarts its recovery process.
>
> **Tuesday 10:15am**
>
> SQL Server completes the recovery process and brings this database online.  Back-end services are turned back on in priority order, and sites are brought back online by 10:30am.

So there you have it. I'm not a database expert myself, so I may have some of these things not quite right, but this is more or less what happened.  The root cause, and which details along the way are actually relevant, is as of yet unclear.

The big question is why did SQL Server fail completely?  One possible cause would be if the SAN expansion caused some disk errors, and left the database in an inconsistent state.  So as you can imagine, we have tickets open with both EMC and Microsoft, and we will get to the bottom of this.  There are also other issues - such as the intermittent failures - that are cause for concern.

Frankly, this was a pretty frustrating experience.  We have a lot of redundant systems - pretty much any piece of hardware in our data center could fail, and we can absorb it without a significant outage.  For example, if an entire SQL box would have lost power, fallen on the floor, and broken into pieces, no problem, we'd have an approximately 10 second outage.  But this case, where the database gets into an inconsistent state, wasn't helped by the redundant systems.

Moving forward, we're doing a number of things. Specifically, we still need to get to the root cause of this particular problem, but in general, we're working a lot on our back-end systems to build additional redundancy, scalability, performance, and resiliency.  We're going to partition data in different ways, so a failure like this will only affect a portion of the user base, a portion of the content, or a portion of the functionality.  Our back-end cache servers will expand to be able to serve data while underlying data store is offline.  And lots more, which I won't go into details about just now, since this post is getting a little long.

But for now - yep, we screwed up.  To our customers who were affected - you have my personal apology, and my assurance that we're doing everything we can to ensure this doesn't happen again.
