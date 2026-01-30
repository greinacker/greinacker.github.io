---
layout: post
status: publish
published: true
title: MobileMe growing pains
date: '2008-07-23 11:21:28 -0600'
date_gmt: '2008-07-23 17:21:28 -0600'
categories:
- apple
tags: []
---
By now we all know about the couple of days it took for the .Mac to MobileMe transition to happen. I didn't really complain about it - during the whole time, email was working fine (from a mail client), and sync was working most of the time. It was just the new web apps that took a while to come up.

More recently, on Friday, there was a complete mail outage for 1% of MobileMe users, and said outage has still not been fixed (as of Wednesday mid-morning). I'm in that 1%.

I'm not really too upset for myself; I'm watching this more from an academic perspective. I use the MobileMe sync a lot between two Macs and an iPhone, and I do use the email, but not often. The fact that mail is down doesn't dramatically affect my life at the moment. And in general, I'll be the first to say I really like MobileMe and what they're doing with it.

But after the email being down for 5 days so far, the techie in me can't help but wonder what is wrong. Apple put up a [KB article](http://support.apple.com/kb/TS1953) about it, saying:

> On Friday, July 18, 2008 (2008-07-18) we experienced a serious issue with one of our MobileMe mail servers. This issue is currently affecting approximately 1% of MobileMe members. Affected members are unable to send or receive email at www.me.com or access email using any email client software such as Mail on a Mac or Microsoft Outlook on a PC.

Let's look at what could perhaps cause something like this:

1\. Complete server failure. Well, in 5 days, you could for sure have another server in there. Actually in more like a couple of hours, assuming their service contract with Sun (they appear to be using Sun's mail servers) is up to date.

2\. Disk failure. Perhaps the entire disk array that this 1% of mailboxes is stored on melted down. Even if this was true, you could almost certainly restore from backups in hours, or worst case days.

3\. Centralized disk failure. If they're using large storage arrays, it's possible there was a systemic failure and they can't get it back online. However, they'd probably have a much bigger problem than a 1% outage if this was the case.

4\. Multiple storage failures. If multiple drives all failed at one time, causing an array to come down, and there was no usable backup, then they might send the failed drives out for data recovery - eek. But still - I would think this could be completed in a day. I've never done it, though, so perhaps this takes a while.

5\. Data corruption. If something went terribly wrong, and the server was writing corrupted data, it could conceivably destroy a lot of data before your monitoring knew something was wrong. Hmm. Restoring from backup is the obvious thing to do, although you might have incremental data loss from the window since the last backup (assuming transaction logs corrupt also).

Like I said, I like MobileMe, although it's certainly taking a PR beating right now. But I'm definitely curious what's going on, and what could possibly take 5+ days to recover from. Any ideas?
