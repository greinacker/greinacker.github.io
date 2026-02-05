---
layout: post
published: true
title: 'More on feed:'
date: '2003-09-16 13:41:27 -0600'
categories:
- Uncategorized
tags: []
---
After some lively [discussion](/gregr/weblog/2003/09/15/subscriptions-with-feed/) yesterday (more references below), here are my thoughts.

- We need to come up with something that's easy for the publisher. If it's not, this has approximately 0.142% chance of widespread adoptance.  
   
- MIME types alone do not solve the problem - lots of discussion about this on yesterday's post.  
   
- Escaping the URL after feed: is going to be way too error prone. Look how many feeds don't correctly escape their content - this is going to be much worse. Which means tools will have to deal with correct and incorrect forms both...so let's just do it the easy way.  
   
- Having a "standard" port for aggregators to listen on is a bad idea; and in fact, many folks (including me) would argue that having the aggregator listen on *any* port is a bad idea.  
   
- We're not developing a new protocol - this is merely a hook into the browser and the shell to make it easy to subscribe. The characters "feed:" will never go across the wire in a request. 

With all that said, I'm thinking we just go with

**feed:/gregr/weblog/rss.aspx**

More reference on this: [1](http://www.tallent.us/PermaLink.aspx?guid=6d03b762-9867-4786-8c33-b649efe3160d) [2](http://www.tallent.us/PermaLink.aspx?guid=870ccd20-deef-4439-b442-a48e2f7630fe) [3](http://pirate.typepad.com/blog/2003/09/problems_with_m.html) [4](http://jaykul.fragmentized.com/internet/feedme.php) [5](http://www.brindys.com/winrss/feedformat.html) [6](http://rss.lockergnome.com/archives/opinion/007140.phtml)

Keep the comments coming! Let's try to hammer this out soon - we're all in this to increase adoption of RSS...and arguing over MIME types, parameters, and escaping doesn't get us too much closer to that end.
