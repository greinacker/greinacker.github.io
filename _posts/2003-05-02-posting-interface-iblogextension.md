---
layout: post
status: publish
published: true
title: Posting interface (IBlogExtension?)
date: '2003-05-02 10:05:06 -0600'
date_gmt: '2003-05-02 17:05:06 -0600'
categories:
- Uncategorized
tags: []
---
More on the interface extension that [Luke](http://www.hutteman.com/weblog/2003/05/02.html#000079), [Simon](http://www.pocketsoap.com/weblog/2003/04/1239.html), [Matt](http://www.mattberther.com/2003/05/000072.html), and [I](/gregr/weblog/2003/04/29/weblog-posting-interface-contd/) have been talking about.

Let's first think of this from purely a weblog-posting extension point of view, then we'll come back to the other options.

HasEditingGUI was designed for those aggregators that *do* have a built-in editor; the idea is, a user could edit their new post within the aggregator, and pass the finished ready-to-post text off to the extension. Thinking about it more, however, makes me wonder if maybe the interface semantics are wrong here. What we need is a way to distinguish between an item that has been edited and is completely ready for posting, and an item which requires further editing. Most IBlogThis implementations I've seen handle the latter category, but this is insufficient for our needs.

What I'm thinking is keep the HasEditingGUI function, so aggregators that do have editors can make (or expose) choices about which editor to use, but add a parameter to the BlogItem function indicating whether the item has been edited and is ready to post.

 void BlogItem(IXPathNavigable rssFragment, bool edited);

Where edited would be true if the user has edited the item in the aggregator, and false if not. Aggregators without editing GUI's would always pass false. The plug-in can then make choices about the GUI it displays, if any.

Luke mentions that maybe we need a HasConfiguration property to indicate whether or not the plug-in has any interesting configuration information - I agree.

For the case where a plug-in has not yet been configured, but BlogItem is called, I agree with Matt - the plug-in should gracefully handle this case, perhaps popping up a dialog for the user to complete the configuration.

On the integrated configuration question, I'd vote for keeping it simple for now - let's just have a single function for the plug-in to pop up its configuration information; if in the future, it seems we need it, we can extend the interface (or add a new one) to allow integrated configuration in a tabbed dialog or whatever.

And about inheriting from IBlogThis, Luke brings up another good point about being incompatible with IBlogThis extensions. I think we could work around it for the particular problem he mentions; however, we won't be able to fix the need for another parameter to BlogItem. So, the new proposed interface below no longer extends IBlogThis.

public interface IBlogExtension  
{  
 // Name of plug-in, suitable for display to a user  
 string DisplayName { get; }

 // return true if plug-in has configuration settings  
 bool HasConfiguration { get; }

 // Display configuration dialog to user, if applicable  
 void Configure(IWin32Window parent);

 // Return true if an editing GUI will be shown to the  
 // user when BlogItem is called. In this case, the  
 // aggregator will not display its own editing UI.  
 bool HasEditingGUI();

 // Post item to weblog. If plug-in is going to show a  
 // GUI for editing, it should return true to HasEditingGUI().  
 void BlogItem(IXPathNavigable rssFragment, bool edited);  
}

Keep the comments coming!
