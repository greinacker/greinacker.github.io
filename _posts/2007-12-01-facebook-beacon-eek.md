---
layout: post
published: true
title: Facebook Beacon - eek
date: '2007-12-01 16:42:16 -0700'
categories:
- Uncategorized
tags: []
---
Over the last month or so, Facebook has been making changes to how Facebook Beacon works, seemingly in response to privacy concerns. But none of the changes have addressed one of the worst parts of the problem.

If [this post from Dare Obasanjo](http://www.25hoursaday.com/weblog/2007/12/01/FacebookBeaconIsUnfixable.aspx) doesn't scare you, at least a little, then read it again:

> When you read this you realize just how insidious the problem actually is. Facebook isn't simply learning about every action taken by Facebook users on affiliate sites, it is learning about every action taken by every user of these affiliate sites regardless of whether they are Facebook users or not.
>
> At first I assumed that the affiliates sites would call some sort of IsFacebookUser() API and then decide whether to send the action or not. Of course, this is still broken since the affiliate site has told Facebook that you are a user of the site, and depending on the return value of the hypothetical function the affiliate in turn learns that you are a Facebook user.
>
> But no, it is actually worse than that. The affiliate sites are pretty much dumping their entire customer database into Facebook's lap, FOR FREE and without their customers permission. What. The. Fuck.

If you're not worried yet, then take a look at [this post from the CA Security Advisor Research blog](http://community.ca.com/blogs/securityadvisor/archive/2007/11/29/facebook-s-misrepresentation-of-beacon-s-threat-to-privacy-tracking-users-who-opt-out-or-are-not-logged-in.aspx), showing a network trace of a site sending data to Facebook that could identify you being sent to Facebook even after you've opted out or logged out.

I usually run pretty fast and loose with this kind of thing; however, if I do business with a site, I expect that they will not share identifying data with another site without explicitly asking. Shame on you, Beacon partners.
