---
layout: post
published: true
title: Formatting and Styles in NewsGator
date: '2003-08-11 17:27:53 -0600'
categories:
- newsgator
tags: []
---
This is the first of a few posts to come about cool [NewsGator](http://www.newsgator.com/ "http://www.newsgator.com/") features that aren't obvious...

Did you know you can change the formatting of posts within NewsGator? A common request is to be able to change the default font used to render items. The font used is actually Internet Explorer's default font, and you can change that if you wish (IE, Tools/Options, Font button). But starting in 1.3, there's another way.

There is a file in your NewsGator installation directory called ngstyles.css. If you edit this file, and insert some CSS styles, you can change the way posts are formatted. For example, to change the font used for the post/comment links at the top of the post (or bottom, depending on how you have it configured), put the following into your ngstyles.css file:

> 
>     .ngpostlinks
>     {
>        font-family: Arial;
>     }

Similarly, there is a file called NewsPage.css which contains style and formatting information for the NewsPage. You can edit this at will also, and come up with the formatting you like.

[Chris Pirillo](http://chris.pirillo.com/ "http://chris.pirillo.com/") was kind enough to post the stylesheets he's using in the [NewsGator forums](http://www.newsgator.com/forum/ShowPost.aspx?PostID=635 "http://www.newsgator.com/forum/ShowPost.aspx?PostID=635"). In fact, he also posted a whole new NewsPage HTML file, which uses different icons. Thanks Chris!

So how about it? Anyone else want to post their creations in the forum?
