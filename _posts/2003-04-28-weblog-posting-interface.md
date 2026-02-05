---
layout: post
published: true
title: Weblog posting interface
date: '2003-04-28 18:58:51 -0600'
categories:
- Uncategorized
tags: []
---
Simon Fell has defined an [IBlogThis](http://www.pocketsoap.com/weblog/2003/04/1202.html) [interface](http://www.pocketsoap.com/weblog/stories/2003/04/0023.html), which an aggregator plug-in can implement. In this model, the aggregator passes an existing post to the plug-in. The plug-in will then display a GUI for the user to enter the post, and the plug-in will then post to the weblog.

This is a good start; however, I've recently been looking into adding posting capability to [NewsGator](http://www.newsgator.com/), and we need more intelligence in the plug-in to deliver a rich and consistent user experience. Since you can edit HTML from within Outlook, we'd like to leverage that capability in some cases; and in other cases, we'd like the plug-in to handle the UI. I'd like to leave it up to the plug-in to decide; this way, we can support rich posting plug-ins like w.bloggar, as well as quick-and-dirty plug-ins whose only job in life is to take some data and post it to a weblog, never prompting the user.

We need an interface for NewsGator to use to communicate with the plug-ins. The intent would be that other aggregators can support this as well - it should be very easy for them to implement. It should also be easy to implement for the plug-in authors. With that said, here's a first cut:

```
public interface IBlogIt
{

 // Display configuration dialog to user, if applicable
 void Configure();

 // Return true if an editing GUI will be shown to the
 // user when BlogItem is called. In this case, the
 // aggregator will not display its own editing UI.
 bool HasEditingGUI();

 // Post item to weblog. If plug-in is going to show a
 // GUI for editing, it should return true to HasEditingGUI().
 void BlogItem(IXPathNavigable rssFragment);
}
```

Configure - this is necessary to allow the plug-in to prompt the user for configuration information, such as URL, port, etc. to post to.

HasEditingGUI - if the plug-in returns false to this, the aggregator will be expected to pass in a complete, ready-to-post article. If the plug-in returns true, the aggregator will pass in whatever it likes, and the user will edit the post from within the plug-in.

BlogItem - Passes a post into the plug-in for optional editing, and posting.

This should allow us to use rich posting tools with GUI's, as well as non-GUI post-only tools. I'd like this plug-in interface to cover all of the immediate needs we can think of for communicating with posting tools. Comments?
