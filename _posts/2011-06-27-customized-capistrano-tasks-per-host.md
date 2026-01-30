---
layout: post
status: publish
published: true
title: Customized Capistrano tasks per-host
date: '2011-06-27 11:45:39 -0600'
date_gmt: '2011-06-27 17:45:39 -0600'
categories:
- development
tags:
- ruby
- capistrano
- iptables
---
This was something that took a while to piece together, and most of the links I found on the net pointed to vastly more difficult solutions.

The problem: I wanted to create iptables rules that would lock down the back-end private IP's of my servers to allow access only from each other. Every time I add or remove a server, these rules need to be rewritten, so my Capistrano deployment seemed the logical place to do this (as opposed to my server installation scripts).

But...each server needed its own rules, which would be different from each other because the interfaces would be different. And in Capistrano, this isn't really the default mode of operation. It's easy to customize tasks by role, but doing it by host (while allowing for easy addition or removal of hosts) is harder.

You do have access to \$CAPISTRANO:HOST\$ within your tasks; however, this is only evaluated within the context of certain functions like "run". Which may or may not help...in this case, it did not.

Here are the relevant snippets from what I did. First, I added a custom attribute 'internal' to each host, which is its internal IP address:

{% gist 3915166 1.rb %}

Then, inside my :update_rules task, I needed an array of all the internal IPs, so I find the servers for the task (using find_servers_for_task) and iterate over them to pull out the :internal attribute:

{% gist 3915166 2.rb %}

And finally, the part that does something different on each server...here, for each server, I add rules for all of the internal IPs; note the :hosts option on the run command, which specifies the task will run on only that host (sorry for the line wrapping).

{% gist 3915166 3.rb %}

I'm looping through all the servers, running a specific task on each of them. This isn't perfect; it will run on only one host at a time, rather than running in parallel...but it gets the job done!
