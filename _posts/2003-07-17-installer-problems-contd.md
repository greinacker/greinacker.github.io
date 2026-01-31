---
layout: post
status: publish
published: true
title: Installer problems, cont'd
date: '2003-07-17 12:45:19 -0600'
date_gmt: '2003-07-17 19:45:19 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
Well, after some more research (thanks again to everyone who responded!), it seems that the following registry key is occasionally not getting created:

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion  
\Uninstall\\B888BA11-6DF7-499D-8D98-F6B87AFA2359}

The key is supposed to be created by the windows installer engine, and if this key is missing, the remove button will be disabled/missing (depending on the OS).

This seems to happen on approximately 1-2% of installations, and there doesn't seem to be any other obvious things in common. And, on an affected machine, removing NewsGator and then reinstalling it will bring things back to normal.

InstallShield support has been less than helpful, although I kind of understand since I can't reproduce this problem on any of our test systems here, with a huge number of different configurations. And getting a log file is problematic - by the time I know a machine has a problem, re-running the installer won't have the problem again...so we can't get a log of it happening.

Any installer experts out there have any ideas?
