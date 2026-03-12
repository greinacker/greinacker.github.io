---
layout: post
published: true
title: SmartThings to HomeKit bridge for door locks
date: 2026-03-12 14:25:00 -0600
categories:
  - development
tags:
  - HomeKit
  - SmartThings
---
My automation system of choice in my house is Apple Home, but I have devices that are not
directly compatible, including a Schlage door lock. It's connected (via Zigbee and SmartThings),
but not accessible via HomeKit / Apple Home.

In the past, I have used [Homebridge](https://homebridge.io) and a plugin to connect this up. 
This worked fine for a while, but for some
reason it would periodically stop working and require some maintenance steps (for the record,
I'm sure this was my fault, and not a Homebridge problem!). I ended up just turning off the
Homebridge server, and just used SmartThings with some Apple Shortcuts for automation.

Recently, though, I decided to tackle this again, but this time with some custom single-purpose
code. [st-hk-bridge](https://github.com/greinacker/st-hk-bridge) is the result - a 
small server, which will run in a Docker
container, that bridges a SmartThings-compatible lock into HomeKit: 

![](/gregr/weblog/assets/postImages/frontdoor.png)

I've been running this
for a couple of weeks, and after ironing out a few kinks, it's been working well. It uses the
SmartThings API, so if you'd like to use it yourself, you'll need to sign up for the (free) 
API, and get your deviceId and an
access token.

The majority of the code was written by [Codex](https://developers.openai.com/codex/), which 
has truly seen massive improvement over the last few months!
