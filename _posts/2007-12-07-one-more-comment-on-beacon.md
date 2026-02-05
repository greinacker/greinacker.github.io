---
layout: post
published: true
title: One more comment on Beacon
date: '2007-12-07 11:21:07 -0700'
categories:
- Uncategorized
tags: []
---
Sigh...I thought I could let this go, but I just can't seem to. :-)

[As I wrote a few days ago](/gregr/weblog/2007/12/01/facebook-beacon-eek/), Facebook's Beacon collects data from third-party sites, and associates actions on those sites (such as buying something) with your profile data on Facebook. They've now allowed you to opt-out of having this information stored on Facebook's servers, but the data is still sent to them regardless (even if you're logged out).

Upon further reflection, I think MUCH more blame falls on the Beacon partners than I originally thought. The one Beacon partner that I've interacted with (that I know of) since all this has been happening is [Kiva](http://www.kiva.org). I made a loan there, and the little Beacon popup came up and asked if I wanted to publish that to my Facebook feed. At the time I said yes, and silently wondered what exactly just happened.

What happened was this - Kiva sent, without my permission, data about a financial transaction I just made to Facebook. They sent it in a way that allowed Facebook cookies to be sent as well, which included my email address. Basically, without my permission, they told Facebook that Greg Reinacker just loaned money to [Julia Vilca Chura](http://www.kiva.org/app.php?page=businesses&action=about&id=24702).

That's a dangerous precedent. And if we look at [Kiva's privacy policy](http://www.kiva.org/about/termsOfUse), here's the relevant piece (emphasis mine):

> 4\) **Kiva will not disclose your personally identifiable lending activity to any third party without consent.** Kiva reserves the right to record and display anonymous lending activity on the Website and display the general regions where our lenders are located.

I think the transmission of my lending activity to facebook, knowingly with identifying information in the form of a facebook cookie, is pretty blatantly a violation of this privacy policy. Even if Facebook "promises not to store it" - I don't care. I don't want you to send it.

I don't know for sure - but I'm guessing other Beacon partners don't disclose this in their privacy policies either. If any of you have checked, please post a comment about it.

And by the way - I hate to pick on Kiva, because I think they're accomplishing something that's really great, and I encourage you to check them out. But I hope they will fix this in one way or another - and for the time being, I think that means disabling Beacon unless they have my explicit consent.

**UPDATE:** Liz from Kiva responded via email:

> We appreciate the concerns that you mention below, so a short while ago, we suppressed the feature so that it is entirely opt-in on the thanks page. Now, after making a loan, a lender must actively click "Post" to display information about his/her loan to a Facebook Newsfeed. We do not share any loan data until the user clicks a Facebook link after lending, and unless the lender clicks the link, no loan data is shared. Please find a screenshot of the thanks page attached to this email.
>
> As you note in our privacy policy, we assert that "Kiva will not disclose your personally identifiable lending activity to any third party without consent." So, when we saw how the Facebook feature worked, and that it was opt-out rather than opt-in, we quickly suppressed the feature so that there was no possibility that Kiva was sharing lending activity without pro-active consent.
>
> [![Kiva screenshot](/gregr/weblog/assets/uploads/2007/12/kiva_screenshot.thumbnail.png)](/gregr/weblog/assets/uploads/2007/12/kiva_screenshot.png "Kiva screenshot")

Perfect- kudos to Kiva for stepping up, realizing that Facebook's "changes" have been wholly insufficient, and making the changes necessary to protect their users' privacy. We can only hope that the other Beacon partners will do the same.
