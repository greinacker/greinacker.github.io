---
layout: post
published: true
title: Web Services in the Travel Industry
date: '2002-10-07 15:26:02 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *Similarly, Sabre Inc. (www.sabre.com) provides customers access to its Web services by supplying a module that runs on its partners’ Web sites. The XML Travel Toolkit module is designed to let partner companies build Web sites to allow their customers to book travel. For instance, a brick-and-mortar travel agent would build a Web site, and then, to allow its customers to make last-minute changes to an itinerary, the travel agent would connect its Web site to the Sabre system using the XML Travel Toolkit.*
>
> *“The travel agent can extend loyalty for a customer who might otherwise sneak over to a travel dot-com,” said Cheryl Hutchinson, product manager the XML Travel Toolkit. The reason Sabre chose to distribute software, rather than run it all locally at Sabre, is that Sabre communicates with its module using its own lightweight, structured communications language, rather than XML, which requires more bandwidth.  \[*[*SD Times*](http://www.sdtimes.com/news/063/special1.htm)*\] via \[*[*.netWire*](http://www.dotnetwire.com/frame_redirect.asp?newsid=3672)*\]*

Hmm.  So Sabre has services available, which require proprietary software on the client end, use a proprietary transport protocol, and a proprietary data format (the XML mentioned is only used between the client and the proprietary client library).  Does this have anything to do with web services?  [Galileo](http://www.galileo.com) has had a similar product available for several years, called [XML Select](http://ais.galileo.com).  This is nothing new!

However, Galileo also has "real" [web services](http://www.prnewswire.com/cgi-bin/micro_stories.pl?ACCT=121034&TICK=GALILEO&STORY=/www/story/06-03-2002/0001739482&EDATE=Jun+3,+2002), using industry standard protocols and data formats (you know, SOAP and HTTP).  They even have [huge customers](http://www.prnewswire.com/cgi-bin/micro_stories.pl?ACCT=121034&TICK=GALILEO&STORY=/www/story/08-13-2002/0001782252&EDATE=Aug+13,+2002) (like AAA) using them.  Good stuff.

Disclaimer - I worked on both XML Select and the web services products at Galileo...so I'm prone to shamelessly plug them whenever possible.  However, if you want to keep track of who's really doing it with web services, Google will tell you (for [Sabre](http://www.google.com/search?hl=en&ie=UTF-8&oe=UTF-8&q=sabre+web+services) and [Galileo](http://www.google.com/search?hl=en&lr=&ie=UTF-8&oe=UTF-8&q=galileo+web+services)).  The top hit for Sabre is about the XML Toolkit described above...
