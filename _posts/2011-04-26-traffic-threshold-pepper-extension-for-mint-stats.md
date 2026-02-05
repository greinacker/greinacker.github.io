---
layout: post
published: true
title: Traffic threshold pepper extension for Mint stats
date: '2011-04-26 10:10:37 -0600'
categories:
- internet
tags:
- mint
- pepper
- stats
---
I've started using [Mint](http://haveamint.com/) for web stats on this site. I stumbled across a [review from Shawn Blanc](http://shawnblanc.net/2007/12/the-full-mint-y/) that he wrote about an older version a while back, and decided to try it. It's a web stats package that you install on your server, and it's really focused on what's happening right now (as opposed to deep dives on old historical data). I've had it running for about a week, and I love it so far! It's also extensible with add-ins called "peppers" which can be found in a directory on the site.

Not one to leave well enough alone, I also wrote a pepper. Sometimes this site gets bursts of traffic, which I don't always find out about until later when I'm looking at the stats. So I wrote a "Traffic Threshold" pepper which will send an alert via email when a certain number of page views per minute has been hit.

<img src="/gregr/weblog/assets/uploads/2011/04/trafficthresholdpepper1.png" title="trafficthresholdpepper1" class="alignright size-full wp-image-767" style="padding-left:10px;padding-bottom:10px;" width="270" height="283" alt="Preferences" />It's designed to be super fast. No extra script is used on the client side. The preferences are stored in the Mint database using the Pepper API, so Mint will load them (and it's designed to load pepper preferences efficiently). The actual page view counting, though, isn't done with the database or a file, but rather uses a unix system V shared memory segment. Web requests are served from multiple processes, and thus the page view counter needs to be saved somewhere where they can all access it; shared memory (with synchronization to protect against simultaneous updates) is one of the fastest ways to do this.

The shared memory is allocated on installation (when the pepper is testing to see if the required APIs are available), and will be cleaned up when the pepper is uninstalled. It won't work on every system - for example, if you're on a shared hosting plan, the required APIs may be disabled. But you can give it a shot, and you'll see a message during configuration if the pepper can't be installed.

It also assumes you have a default mailer set up on your system to send mail. It measures using clock minutes, rather than a 60-second sliding window. There are technical reasons for this, but most folks will never notice. And it will only work for sites hosted on a single server. If you're a bigger site that's hosted across a large web farm, you probably don't need this pepper anyway!

I'll submit this shortly to the [Mint Peppermill](http://haveamint.com/peppermill/), but in the meantime you can download it [here](http://www.rassoc.com/gregr/misc/trafficthreshold_100.zip).

Update: now available from the [Mint site](http://haveamint.com/peppermill/pepper/102/traffic_threshold/).

Update 2: source now available on [Github](https://github.com/greinacker/trafficthreshold); if you have ideas to make it better, feel free to contribute!
