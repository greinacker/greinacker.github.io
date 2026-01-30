---
layout: post
status: publish
published: true
title: RSS extensions
date: '2004-01-23 10:14:10 -0700'
date_gmt: '2004-01-23 17:14:10 -0700'
categories:
- Uncategorized
tags: []
---
You may not have realized it, but [NewsGator 2.0](http://www.newsgator.com/) supports arbitrary RSS extensions. Yep, arbitrary - you can define whatever extension you like, and NewsGator will be able to use it in one way of another. Let's explore how this works, and what you can do.

First, what is a RSS extension? Here's a trivial example. Suppose you have a RSS item:

```
<item>
  <title>My Post</title>
  <link>http://example.org/post14.htm</link>
  <description>Here is what I have to say.</description>
</item>
```

Pretty straightforward. But I could add my own data to this item:

```
<item>
  <title>My Post</title>
  <link>http://example.org/post14.htm</link>
  <description>Here is what I have to say.</description>
  <greg:CoolFactor>10</greg:CoolFactor>
</item>
```

But if I do this, most client tools will completely ignore the CoolFactor element. Until now.

With NewsGator 2.0, there are three different ways you can deal with extensions:

**Map data to a column** - you can take any extension data and map it to a column in Outlook. For example, I could create a column in Outlook called "coolness", and map the above CoolFactor data into that column. I could then not only see it, but sort on it, or whatever else I'd like to do with it. NewsGator users, go to NewsGator/Options, Rendering tab to see these mapping options.

**Render custom data in the post body** - NewsGator 2.0's rendering engine now uses XSLT, and you can customize the transforms used to render the items. What's more, any custom data (such as the CoolFactor element is available to these transforms...so you could have a custom rendering based on this data by building a new stylesheet. For example, change how big the font is based on some value, or have a big blue number in the corner showing the custom data.

And further, a feed can "recommend" what stylesheet should be used to render it. NewsGator won't automatically download stylesheets (for a number of reasons, mostly security-related), but if the named transform exists, it will use it.

**Custom NewsGator Extensions** - NewsGator 2.0 provides a new extension API, which can be used to do any arbitrary processing on RSS extension elements. You can do literally anything you want to here - examples:

- Create a meeting request in Outlook based on custom data in the feed
- Create a contact in Outlook based on custom data
- Retrieve content from a web site or internal business system and include it in the rendering

The possibilities are endless. The extension API is not yet up on the web site (it will be soon), but it available on request to anyone who would like to use it.
