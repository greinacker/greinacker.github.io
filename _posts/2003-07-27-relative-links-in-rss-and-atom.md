---
layout: post
status: publish
published: true
title: Relative links in RSS and Atom
date: '2003-07-27 19:54:05 -0600'
date_gmt: '2003-07-28 02:54:05 -0600'
categories:
- Uncategorized
tags: []
---
The upcoming 1.3 version of NewsGator fully supports relative links. I'm writing this here to make sure I haven't missed anything...input is appreciated. 1.3 beta testers - what is written here does not reflect your latest code.

When resolving all links, including and similar elements, and content links (description, content:encoded, atom:content), [xml:base](http://www.w3.org/TR/xmlbase/) behavior is used. The xml:base attribute may appear anywhere in the input document, and the rules will be followed according to the spec. Which means, of course, that multiple xml:base attributes can be used, applying to different parts of the document.

For content elements, in the case where no applicable xml:base is found, links will be resolved relative to the URI (or if @isPermaLink="true").
