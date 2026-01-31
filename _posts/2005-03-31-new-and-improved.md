---
layout: post
status: publish
published: true
title: New and Improved
date: '2005-03-31 18:52:37 -0700'
date_gmt: '2005-04-01 01:52:37 -0700'
categories:
- Uncategorized
tags: []
---
As many of you [noticed](http://www.isaack.info/archives/2005/03/31/newsgator-improved), NewsGator Online was down for [maintenance](http://www.newsgator.com/news/archive.aspx?post=55) last weekend for about 8 hours.

We use Microsoft SQL Server on the back end for much of our storage needs. What we found was the SCSI disk arrays we were using for storage were being maxed out in terms of I/O throughput during peak times on the site. Lots of changes have been going on in the database structure and the code accessing it, but at the end of the day, we just needed more I/O capacity than was possible with the storage system we had.

Another problem in parallel was the massive growth we've been experiencing.  The SCSI arrays we were using had physical limits as to how much storage space we could add, and we were bumping up against those limits on a regular basis. We needed something more expandable.

So over the weekend last weekend, we installed an EMC fibre-channel SAN, and moved our I/O-intensive SQL databases over to that. We got a HUGE boost in I/O performance, and we can now expand storage capacity very quickly and seamlessly without downtime.

We went live again around 6:00pm.  Amusingly enough (in hindsight), at 6:31pm, we had our first drive failure...we're all sitting there with the EMC guys, and our phones start beeping with the email notifications.  Probably better that it happened while they were still there!  Luckily one of the hot spares just took over, and we had a new drive at the data center a few hours later.

In the end, we're very happy with the current system.  We can now scale out where appropriate with local storage, and scale up where necessary with the SAN.
