---
layout: post
status: publish
published: true
title: Glassboard 2.0 and Glassbot
date: '2012-05-15 10:09:29 -0600'
date_gmt: '2012-05-15 16:09:29 -0600'
categories:
- internet
- development
tags:
- glassboard
- glassbot
---
The folks at Sepia Labs have released [Glassboard 2.0](http://glassboard.com/blog/2012/05/15/introducing-glassboard-2-0/) this morning. Lots of new features in the iPhone and Android apps...but my favorite part is the new [web client](https://app.glassboard.com/).

When I first started using the web app a couple of weeks ago, it struck me as a game-changer for Glassboard. Where I would use the mobile apps for casual messages, with the web app I could keep it up on my desktop screen, and send messages and updates much more quickly. I found I was using it for real work.

Which got me to thinking, I'd like a way to automatically post content into a board. For example, maybe I'd like commit notices from Github to be automatically added to a board. Or maybe new support tickets. Or maybe just a way to have some fun with my friends - who doesn't like seeing a coworker with a huge mustache?

So I created glassbot - a bot for Glassboard...and glassbot_recv, which allows you to post external content into a board.

If you want to try it, you can either:

- Join the Glassbot Playground board with invitation code **cfoli** - once you're in, post a message like "@glassbot help" (without the quotes) to see what he can do.
- Invite the Glassbot to your own board! Just invite "glassyglassbot@gmail.com" to your board; he'll accept within a few seconds, and then enter "@glassbot help" (again without the quotes) to see what he can do.

After you invite the glassbot, you can add a post-receive webhook from Github if you want to see notifications - use the URL

    http://glassbot-recv.herokuapp.com/github/{BoardId}

as the endpoint URL, replacing {BoardId} with the ID of your board (you can see this in the Glassboard web app).

If you have ideas of things Glassbot could do, or you want to run your own, the code is available at glassbot (in Ruby) and glassbot-recv (Node.js) - add some new actions and let's have some fun!

Because every board needs a bot.

UPDATE 06/12/2012 - the source code links have been removed at the request of the Glassboard team, while they are making changes to their API. The glassbot is still running, though, and you can still invite it to your boards. I'll put the code back up when I get the ok.
