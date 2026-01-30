---
layout: post
status: publish
published: true
title: NewsGator and APML
date: '2008-05-21 07:30:00 -0600'
date_gmt: '2008-05-21 14:30:00 -0600'
categories:
- newsgator
- internet
tags: []
---
Back when we announced that [NewsGator's RSS clients are now free](/gregr/weblog/2008/01/09/newsgators-rss-clients-are-now-free/), I also mentioned that we'd be supporting APML across the entire platform. Some of our client applications implement exporting APML at the moment...but we've now implemented a persistent APML endpoint in our online platform. What this means is, if you're using sync with NewsGator Online, there is a well-known URL that represents your APML attention data.

This APML endpoint can be either public or private - it's your choice. If it's private, it will require your NewsGator Online credentials to access. If it's public, anyone can access it.

Here's how to enable this:

1\. From [NewsGator Online](http://www.newsgator.com), sign in and then click on the "Settings" item at the top right.

2\. You'll now see four tabs; click on "Edit Locations".

These "locations" are actually groups of feeds; you'll see at least one location for "NewsGator Web Edition", and you'll see one location for each client you're using. Each location forms a subset of your overall list of feeds. You can control which feeds are mapped to each location by using the "Feeds" link next to each location.

3\. Next to each location, you'll see a link for "APML" - click that link.

4\. You will then see your individual APML URL for that particular set of feeds. If you wish to make it public (or private), use the checkbox on that page.

At the moment, we're exposing feed-level attention data; we have more detailed data available, but it's not being exposed at the moment.

Let us know if this is useful, and any suggestions you have!
