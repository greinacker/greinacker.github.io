---
layout: post
status: publish
published: true
title: Hello Jekyll
date: 2026-01-31 12:00:00 -0700
categories:
  - development
tags:
  - jekyll
---
Hello again everyone! I realize it's been a while...hopefully that will change!

First, I'd like to apologize to those of you reading this in a RSS reader, if you're seeing a bunch of posts from the past showing up again. Hopefully this won't happen again for a while.

This blog has been around since the early days of blogging. I started on [Jan 3, 2002](/gregr/weblog/2002/06/03/welcome/) with [Radio Userland](http://radio.userland.com), and quite enjoyed having a new blog. This of course led to some [dabbling with RSS](/gregr/weblog/2003/01/04/news-aggregator/), and later to starting NewsGator.

Just under a year later, I did what many developers did at the time :), and spent my Christmas break building my own blogging platform in [Dec 2002](/gregr/weblog/2002/12/29/no-more-radio/), built on .NET and Microsoft SQL Server (which was my development specialty at the time). In hindsight, this was a good choice for me personally, as it led to lots of experimentation with the community with pingbacks, trackbacks, comment feeds, and lots of RSS/Atom involvement.

This worked great up until Nov 2007, when I really felt like I could take advantages of some of the features built into Wordpress (like standardized posting APIs, etc), and I didn't really have time to add these features myself (NewsGator was in full swing at this time). So, I [switched over](/gregr/weblog/2007/11/29/and-the-blog-moratorium-shall-end/) [to Wordpress](/gregr/weblog/2007/11/29/migration-to-wordpress/).

And now, over 18 years later (I can't believe I just typed that!), I'm finding Wordpress to be less desirable. I don't need 99% of its features. It (or more specifically, mysql) often exhausts the available RAM on the VPS it runs on, leading to issues like automated SSL certificate renewals failing. It was also multiple major PHP versions behind, multiple WP versions behind, and I didn't feel like upgrading everything all the time was a good use of my time any more.

So I've moved to a static site generator, [Jekyll](https://jekyllrb.com), and using the [Chirpy theme](https://github.com/cotes2020/jekyll-theme-chirpy) which seems to be somewhat actively maintained at the moment. The migration itself wasn't trivial, mostly due to having used multiple posting tools in the past that inserted "extra" HTML markup in the posts that needed to be removed after converting to markdown. A tale that I'm sure no one wants to hear about!

A couple of items about this change I wanted to mention:

- User comments have been removed, including old comments. The majority of these were 10+ years old, so hopefully no one will be too bothered. I still have them, and I can bring them back in the future if I decide to, but for now comments are not available.
- The Project 365 site from 2010 has also been removed. The photos themselves from the [project](/gregr/weblog/2010/01/06/project-365/) are still available on Flickr (!).
- Since [cool URIs don't change](https://www.w3.org/Provider/Style/URI), all post URLs have been preserved. The last time they changed was in 2007, at which point they were redirected from some _really_ old URLs.

So if you got this far - I'm happy you're still here reading my site, and I really do hope to post more frequently with the new setup! 