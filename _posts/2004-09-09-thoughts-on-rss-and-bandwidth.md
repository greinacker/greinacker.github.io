---
layout: post
status: publish
published: true
title: Thoughts on RSS and bandwidth
date: '2004-09-09 23:58:34 -0600'
date_gmt: '2004-09-10 06:58:34 -0600'
categories:
- Uncategorized
tags: []
---
Every couple of months, there is another uprising about the bandwidth usage of RSS...the most recent one has been going on in the last couple of days, and this post from [Robert Scoble](http://radio.weblogs.com/0001011/2004/09/08.html#a8200) is right in the middle of it, along with its associated comments. In another post, he even says "[RSS is broken](http://radio.weblogs.com/0001011/2004/09/08.html#a8195)."

As you could probably surmise, NewsGator's own RSS feeds (such as the [News/Updates feed](http://www.newsgator.com/news/rss.aspx)) generate an enormous amount of traffic. This isn't unexpected, and our network is designed for this...but I understand what people are seeing with their feeds. We use HTTP caching mechanisms to dramatically reduce the total bandwidth requirements, and other internal caching mechanisms to reduce overall server load.

90% of the discussion on the bandwidth issue centers around RSS aggregators, and how they are allegedly abusing servers relentlessly. Robert makes a rough estimation that hits increase 20x by having a RSS feed on a site like MSDN. He also surmises that this will get worse and worse over time:

> *This gets worse over time because on most sites HTML traffic will go down as people move away (at least until the site reposts interesting content that'll bring back more traffic) while RSS just grows and grows even if new content doesn't get posted because people subscribe and don't move away.*

Let's look at two cases. Let's make the assumption that the "average" aggregator will default to polling once an hour. Let's also assume that the server implements HTTP caching headers in some way - really, I consider this a minimum entry criteria for RSS on a busy site.

Case 1 - the content on the site doesn't update often (let's say once a day). If the feed only updates once a day, 96% of the requests for the feed (23/24) will return a 304 Not Modified response. The other 4% of requests will respond with the entire contents of the feed. For the 304's, the bandwidth is small (not negligible on an extremely busy feed, but low enough to not be a huge concern)...total number of connections are something to worry about, but typically not a big issue in most environments.

And the 4% will drop even smaller if the content is updated less often than once a day.

Case 2 - the content on the site is updated often, such that there are almost always changes from hour to hour. Assuming the feed updates in real time, every request to the RSS feed in our example will return the entire feed. This is the case that's worth worrying about.

Given case 2, there are a number of things that can be done. Fewer items in the feed, excerpts versus full content; all of these have their issues. Some folks have suggested serving incremental content changes based on if-modified-since headers, which not only violates the HTTP specification, but breaks in common caching proxy scenarios. So what can you do?

One possible thing you could do is use caching headers to limit the potential "exposure" of a shorter-than-ideal aggregator polling interval. Nick Bradbury describes one such way to do that [here](http://nick.typepad.com/blog/2004/09/rss_bandwidth_c.html).

Another similar option would be to batch feed updates to once or twice a day. All of the RSS feed requests would return a 304, except for those that occur just after the daily update(s). If there is one update a day, you cut 96% of the required bandwidth in our example. But wait - isn't the point of RSS to get quick updates to site changes?

Now it gets interesting in a different way.

Back to Robert's example, he assumes that users without RSS will break down as follows:

> *20% will visit at least once a day  
> 40% will visit at least once a week  
> 20% will visit at least once a month  
> 20% will not visit in any one month (assuming these folks visited before but just aren't revisiting)*

But look at it this way - 80% of users will be at least a week behind on new content, and 40% will be at least a month behind.

So do you care about these users? Do you have content that you think they would be interested in, if only they knew about it? Would you benefit in some way if these users were reading your content more often? If yes to any of these, RSS helps.

You're distributing incremental content to users who might be interested. From a business perspective, you can't compare the bandwidth required by that process to the bandwidth required if these users only occasionally come to your site.

Further, the RSS hits will generally be smaller that the corresponding HTML pages, and also have less ancillary impact (such as images on the site, layout, etc). For example, my weblog front page is 58KB right now, and the RSS feed is 19KB. Adding images and such to the HTML version, and let's call it 80K, approximately 4x the RSS size.

So I'm finally getting to the point. :-) Assume there is benefit to having users read your content every day. If you had some way to convince your interested users to do this (which of course you're trying to do), going back to Robert's example for the HTML site:

1000 users x 30 visits/month = 30,000 visits/mo (assuming once/day)

This is the ideal case for the site - assuming more exposure for your content is better. We're not counting ancillary hits here, which will certainly add to the server load.

With RSS, let's say we set it up to update/publish the feed 4x per day - which gives aggregator users an average 3 hour delay before they learn of new content (vs. 24 hours for the HTML):

1000 users x 120 hits/month = 120,000 hits/mo

Remember, all of the other hits (potentially 20 per day per user) are negligible in terms of bandwidth due to cache header implementation.

So we have 4x as many hits, but 1/4 the overall size...so it's a wash in terms of bandwidth. And users are exposed to your content multiple times per day, which is good for you and them both.

If quicker updates are important for your users, then there is an incremental bandwidth cost to pay for that...but you as the publisher can control this, based on the information you're trying to push.

Anyway, many of these numbers are pulled out of the air...but the point is, most mature aggregators (like [NewsGator](http://www.newsgator.com) and [NewsGator Online](http://services.newsgator.com)) use the HTTP caching mechanisms, so use them. And further, there are things you can do on the server side to manage the bandwidth load, depending on the goals you have for your feed.

Comments welcome as always!
