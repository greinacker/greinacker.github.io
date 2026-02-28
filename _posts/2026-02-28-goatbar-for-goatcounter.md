---
layout: post
published: true
title: GoatBar menu bar app for GoatCounter
date: 2026-02-28 11:35:00 -0700
categories:
  - development
tags:
  - GoatBar
  - GoatCounter
---
When I recently [moved](/gregr/weblog/2026/01/31/hello-jekyll/) my blog to 
Jekyll, I also wanted to find a lightweight 
solution to analytics. I don't need a lot around here - just seeing pageviews
and referrers is generally enough, and given that, I don't want to use a super
heavy solution that downloads huge javascript files.

I settled on [GoatCounter](https://www.goatcounter.com), which is a lightweight solution for my needs, and
has been working well for me so far.

Since this site doesn't get a ton of traffic, I'm unlikely to visit the 
analytics pages every day, and thus might miss someone who has linked here
that I might want to respond to. So, I built [GoatBar](https://github.com/greinacker/GoatBar) - 
a small menu bar
app that displays total pageviews in the last 24 hours on the menu bar:

![](/gregr/weblog/assets/postImages/menu-bar-status.png)

And if you click it, you'll see an hourly breakdown for those last 24 hours:

![](/gregr/weblog/assets/postImages/menu-bar-menu.png)

It's very small and lightweight - I've had it running for a week or so on my
Mac, and it's using around 23MB of RAM.

I'm making it available in source form only, so you'll need to build it yourself
in Xcode, but it just takes a minute!

Related, it's quite striking how much progress tools like [Codex](https://developers.openai.com/codex/)
and [Claude Code](https://code.claude.com/docs/en/overview) have made
in the last few months. Codex wrote the majority of the code in this app.
