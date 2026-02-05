---
layout: post
published: true
title: Whidbey delay, hotfixes, and PSS
date: '2004-03-13 12:07:53 -0700'
categories:
- Uncategorized
tags: []
---
So there's obviously been a TON of blogging in the last week over Microsoft's decision to delay Whidbey until 2005. [Dan Fernandez](http://weblogs.asp.net/danielfe/archive/2004/03/13/89006.aspx "http://weblogs.asp.net/danielfe/archive/2004/03/13/89006.aspx") posted some details about this early this morning, and he actually raises some interesting questions about giving developers early code.

Now, keep in mind I have a slightly different perspective than many of the bloggers who have commented on this - my perspective is as an ISV.

My take on the delay? Ship it when it's ready. I can wait. Sure, I'm annoyed by certain things in VS.NET that will be changed in Whidbey. But it's just a tool. I can wait. And for the next version of the Framework? Hmm.

For NewsGator for Outlook, honestly, I'd rather have as few versions of the .NET Framework in existence as possible - because every version that's released multiplies the size of the test matrix. "Backwards compatibility" looks great on marketing materials, but pointing to a glossy doesn't cut it for final testing of a product prior to release.

For web development, for example NewsGator Online Services, it's a totally different story. We control the environment completely...so new framework releases aren't a big deal. We can choose to upgrade whenever we like.

So after reading Dan's post, [Frans Bouma](http://weblogs.asp.net/fbouma/archive/2004/03/13/89021.aspx "http://weblogs.asp.net/fbouma/archive/2004/03/13/89021.aspx") gets a little fired up - both on his own blog and in Dan's comments. Dan says that there are numerous hotfixes available for the .NET framework or VS.NET, and Frans doesn't like that answer:

> *Say there is a bug \[in .NET\] which I need fixing for my own software to work correctly. Am I helped with a fix from PSS? NO! My own install perhaps works, but my customers who will use my software have to call PSS as well! An ISV can't rely on that: "To get this piece of software working, you first have to call Microsoft for a fix". Most customers don't want to install hotfixes, they want service packs.  That's why a hotfix is nice for an internal application, however for ISV's it's absolutely nonsense: they can't ship the software with the patch, the customers have to call MS themselves.*

Well, Frans, I don't think that's quite true in the general case. We had a show-stopper bug in the .NET 1.1 framework, which would pretty much grind NewsGator to a halt on certain (fairly rare) configurations. This problem was costing us dearly, in a measurable way. Working with PSS, they issued a hotfix for the problem, which solved it nicely.

We then worked with Microsoft to get a limited redistribution license. The bottom line? We can distribute the fix to our customers who need it. It took a little paperwork, but it made sense for everyone.

I've had my share of PSS pain, like everyone else. I remember once, at another job, we had a memory leak problem with COM on W2K. I built a test case in about 50 lines of code, and I could reproduce it on every machine we had at the time. Started with PSS, and the problem got escalated quickly (the problem was serious enough that we would have considered switching platforms at the time). The engineers were having problems reliably reproducing it - so I remember taking a whole machine out there and carrying it myself to the engineer's desk. Lol. Only to find out later that the problem was "too big to fix in a service pack" and would hopefully be fixed in the next version of Windows. Yikes!

But even then, their engineers worked with us to eventually come up with a workaround.

In the end, whenever we've had a reproducible show-stopper bug, Microsoft has always worked with us in one way or another to meet our needs. Kudos.
