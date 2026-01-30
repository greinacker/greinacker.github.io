---
layout: post
status: publish
published: true
title: Atom 0.2 snapshot
date: '2003-08-06 13:15:48 -0600'
date_gmt: '2003-08-06 20:15:48 -0600'
categories:
- Uncategorized
tags: []
---
[Mark Pilgrim](http://diveintomark.org/archives/2003/08/05/atom02) announced the Atom 0.2 snapshot yesterday...and, coincidentally, [NewsGator](http://www.newsgator.com) 1.3 (also [announced](http://www.newsgator.com/news/archive.aspx?post=19) yesterday) supports Atom 0.2 feeds. A couple of notes about NewsGator's current level of support:

- Multipart/alternative content is supported, although multiple independent content items will not both be shown. To clarify:  
     
  If you have multiple renderings of a *single* content item, using multipart/alternative, you will see one of them.  
     
  If you have multiple *independent* content items, you will only see one of them. When the spec solidifies, NewsGator will add support for multiple independent content items.  
   
- The xml:base support that didn't make it into the 0.2 snapshot is implemented anyway in NewsGator - because it's the right thing to do. See [Simon Fell's](http://www.pocketsoap.com/weblog/2003/08/1342.html) [feed](http://www.pocketsoap.com/weblog/necho.xml) for a good example of how this should look.  
     
  Note that the way relative links are handled in NewsGator is slightly different between RSS and Atom feeds, in the absense of a xml:base element.  
   
- MIME types and encoding specifications for titles is supported in NewsGator 1.3, although this too didn't make it into the 0.2 snapshot.
