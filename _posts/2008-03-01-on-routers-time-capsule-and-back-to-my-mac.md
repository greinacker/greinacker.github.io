---
layout: post
status: publish
published: true
title: On routers, Time Capsule, and Back to My Mac
date: '2008-03-01 10:42:21 -0700'
date_gmt: '2008-03-01 17:42:21 -0700'
categories:
- apple
- internet
- back to my mac
- time capsule
tags: []
---
This last week, I was working on getting [Back to My Mac](http://www.apple.com/dotmac/backtomymac.html) working on my computers. This requires everything in your router (specifically UPnP or NAT-PMP) to be working just so...and it wasn't. :-) I had a Linksys BEFSR41, which is on Apple's supported list, but no love. UPnP was enabled, but nothing.

So then I get the crazy idea to just unplug the router's power, and then plug it back in. I mean, if all else fails, power cycle, right? Well lo and behold, it started working...who would have thunk? So then I'm playing with Back to my Mac, and it's all looking good. For a while.

Then my router started getting flaky. Like, every few minutes it would stop responding in the admin interface, and connections to the internet would be stopped. The only way to fix it was to either wait a few minutes for it to come back, or power cycle it. Clearly this was not going to be ok.

So I went down to the Apple store (about 5 minutes away), and bought the last 500GB [Time Capsule](http://www.apple.com/timecapsule/) they had in stock. I was thinking about doing this anyway, since I wanted 802.11n in the house, but a dead router was a great excuse to do it sooner rather than later. Got the Time Capsule home, plugged it in, everything worked as expected. Actually, not everything worked right away - I had to power cycle my cable modem to get things talking to each other - but after that everything was great. And Back to My Mac is working fine.

On the storage side of things, I switched my Time Machine backups to use the drive in the Time Capsule; again, everything worked as expected. I'm seeing about 10MB/sec doing backups over a gigabit ethernet network - not stellar, but it's fast enough for what I'm using it for. And it's working about 5x faster than Glenn Fleishman is seeing in his [Macworld first look](http://www.macworld.com/article/132317/2008/02/timecapsule.html), for some reason. I won't complain about mine. :-)
