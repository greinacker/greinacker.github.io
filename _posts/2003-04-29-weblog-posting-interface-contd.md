---
layout: post
status: publish
published: true
title: Weblog posting interface, cont'd
date: '2003-04-29 08:43:41 -0600'
date_gmt: '2003-04-29 15:43:41 -0600'
categories:
- Uncategorized
tags: []
---
Some good feedback. Simon [suggests](http://www.pocketsoap.com/weblog/2003/04/1239.html) deriving from the existing [IBlogThis](http://www.pocketsoap.com/weblog/2003/04/1202.html) - sounds fine to me, especially since there seem to be a fair amount of IBlogThis implementations out there already.

Matt [confirms](http://www.mattberther.com/2003/04/000062.html) the need for this extra functionality...glad to know I'm not the only one who thinks we need this. :-)

Douglas [asks](/gregr/weblog/2003/04/28/weblog-posting-interface/#comments) why we don't just use attributes for the extra information. A good thought; however, I think there is then an additional, implicit contract. I might get the name of a type that implements the configuration GUI, but what do I do with it then? There are implicit assumptions if we go this way; I'd much rather have an interface method, and let the implementor decide how it should work.

I also forgot a couple of things. First, we need to pass a parent to the Configure function, so the implementation can use it to parent any dialogs if necessary. And we need a way to get the display name of the plug-in, to be shown to the user in a list of plug-ins (which could be an attribute, but I've left it as a property for the moment). So my new proposed version:

```
public interface IBlogThisEx : IBlogThis
{
 // Name of plug-in, suitable for display to a user

 string DisplayName;

 // Display configuration dialog to user, if applicable
 void Configure(IWin32Window parent);

 // Return true if an editing GUI will be shown to the
 // user when BlogItem is called. In this case, the
 // aggregator will not display its own editing UI.
 bool HasEditingGUI();

}
```

Keep the comments coming!
