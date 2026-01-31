---
layout: post
status: publish
published: true
title: NewsGator feed retrieval intervals
date: '2008-02-14 12:44:21 -0700'
date_gmt: '2008-02-14 19:44:21 -0700'
categories:
- newsgator
tags: []
---
I was just reading an [article](http://www.louisgray.com/live/2008/02/warning-google-reader-congestion-of-up.html) about Google Reader and their retrieval intervals, and thought this might be a good time to write about what [NewsGator Online](http://www.newsgator.com) does. This is relevant for not only online users, but anyone who is using one of our clients (FeedDemon, NetNewsWire, Inbox, Go!, etc) in sync mode, since in that mode the clients retrieve content from our online system.

One of the more common questions/complaints we get is something about a feed not appearing to update in a timely manner. 99% of the time, it's actually a problem with the feed - but I'll come back to that.

There are about 2.5 million feeds in our system, and these feeds get divided into categories. They have fancy (and sometimes amusing) internal names, but for now I will describe them as follows. Also keep in mind these rules are subject to change, and in fact do change quite often to better optimize the experience for our users and our overall system load.

And before I get into all of this...note that feeds that ping our system will be updated and available typically within 60 seconds. The category the feed is in is largely irrelevant.

Category A: these are feeds that are needed by certain commercial syndication services customers with extremely tight SLAs - some of these SLAs guarantee content available within 2 minutes of publication in a feed. Feeds in this category are retrieved every 60 seconds. Exception - if a feed reliably pings our system with updates, the poll-retrieval interval may be dropped to a lower category; however, if the feed does not appear to ping us with every update, the 60 second interval remains in effect.

Category B: these are feeds with over 20 subscribers, or occasional feeds that for whatever reason are deemed "important" enough to keep in this category. Retrieval interval is 15 minutes.

Category C: these are feeds with 2-19 subscribers, and any feed that requires credentials to access. These feeds are retrieved every 1-2 hours depending on system load.

Category D: these are feeds with only 1 subscriber, which do not require credentials. If that subscriber is an "active user", interval is 1-2 hours. If that subscriber is not very active, interval is 4-8 hours depending on load. The definition of "active" changes, but think of it as people who use the system daily-ish.

Category E: this is what we affectionately call the "penalty box." These are feeds which have returned some kind of error, and they are "penalized" for it. For example - if a feed 404's, it is immediately penalized for 24 hours. A 500 server error? 4 hours. Other kinds of errors (including parsing problems) cause penalties of varying lengths, taking into account how many consecutive errors we see. If a feed continues to have errors for 90 days, it will be blacklisted and no longer retrieved at all...and the only way for a feed to get off the blacklist is for it to a) fix the error(s) and then b) ping us. \[I should add that 410 (gone) is not considered an error; feeds that return a 410 are immediately removed and all subscribers are unsubscribed.\]

Category F: this is somewhat of a grab bag of other cases. The most visible type of feed in this category is craigslist feeds - we retrieve them on a 48-hour interval. This sucks - for you, for me, for everyone - but the problem is craigslist will throttle and blacklist us, and they seem not to be interested in solving this problem with us (we're also not the only ones with this problem). So 48 hours is roughly the minimum interval we can get away with and minimize the chances of getting blacklisted (which takes days to undo).

By far the best way to help ensure timely updates to content is to encourage publishers to ping our system when they update ([I talk about NewsGator's ping endpoint here](/gregr/weblog/2006/02/14/newsgators-ping-endpoint/)). A large number already do this - but there are some folks who do not. If they're using FeedBurner, we're already getting pinged; if they're using another system, they may need to add NewsGator to their ping list manually. But typically, after a ping, updated content is available within 60 seconds. And as mentioned, a ping can even remove content from our blacklist.

We get a fair number of inquiries in the forums and elsewhere about feeds not updating; in nearly all of those instances, everything is actually working fine - the feed has usually fallen into category E for whatever reason. Something I've been thinking about is some kind of status page or something where someone can type in the name of a feed, and we'll display status for that feed (including why it's in the penalty box if it is)...we've resisted doing this because it's just one of those things our users shouldn't have to worry about.
