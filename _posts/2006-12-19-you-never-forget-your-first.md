---
layout: post
status: publish
published: true
title: You never forget your first...
date: '2006-12-19 14:14:52 -0700'
date_gmt: '2006-12-19 21:14:52 -0700'
categories:
- newsgator
tags: []
---
...your first server running your startup company, that is.

Back in March of 2003, I was just about [fed up](/gregr/weblog/2003/03/12/uh-oh/) with the reliability of shared hosting for [www.newsgator.com](http://www.newsgator.com/) - and sometime thereafter, purchased some hardware of my own and moved it to the colocation facility at [ViaWest](http://www.viawest.net/). There were two servers back then, running the whole enchilada - one Dell PowerEdge 1650 for the web site, and a PowerEdge 2650 for the database, both purchased secondhand from a former client of mine.

The 1650 running the web site had two processors, and two physical disks mirrored by software in Windows Server.  Never mind that I had no idea how to boot off of the backup drive if it became necessary; I just felt better knowing there was a mirror.

The 2650 was also two processors, and had three drives in a RAID 5 array. Omigosh, this beast was definitely going to be able to run the SQL database for a while. Or so I thought. :-)

The online site was pretty much just a sales brochure and commerce site through the end of 2003; but in January 2004, what is now called [NewsGator Online was launched](/gregr/weblog/2004/01/14/newsgator-web-edition/), and the traffic (and load) started building quickly. [Here is a snapshot](http://web.archive.org/web/20040326070253/http:/services.newsgator.com/), courtesy archive.org, of the original NewsGator Online services site - being run by these two machines.

The sites quickly outgrew those original machines…but I still have a soft spot in my heart for them. Especially the 1650 web server, for some reason. That server, still affectionally named with its original name, still lives in our data center. The only thing still running on it is my weblog - but that's ok.

Imagine my surprise when it lost one of its disks, and one of our operations guys asked me if we could just move my blog to another server and retire that box. Ha...I think the words out of my mouth were something like "over my dead body!"

Ahh...you never forget your first server.
