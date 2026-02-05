---
layout: post
published: true
title: Virtual PC
date: '2002-12-19 11:48:58 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
I've been reading about what sounds like a super-cool product - [Connectix Virtual PC](http://www.connectix.com/products/vpc5w.html).  It's similar to [VMWare](http://www.vmware.com/products/desktop/ws_features.html), in that you can create virtual machines and install different operating systems.  Great tools - especially for those who must develop and test software for multiple platforms.  But what really caught my eye was this feature:

> *"Undoable Drives allow you to store or discard changes without affecting original state of underlying drive"*

Among other things, what an awesome tool to test application installations.  I can create an image with, say, Windows .NET Server, and save it.  I can then start this OS, run my installation package, see how it went, and undo the whole thing automatically to restore the previous image.  Instantly.  No re-imaging of a drive.  No running the un-install and assuming it worked like it was supposed to.  We've all been through the pain of having to test and re-test installations on clean OS installations; the pain is even worse sometimes for server installations, where you are running scripts to modify the IIS metabase, etc. 

Very cool, if it does what it claims.  Was I the only one who didn't know about this?
