---
layout: post
status: publish
published: true
title: Choosing a colocation vendor - power and cooling (part 3)
date: '2011-04-13 10:05:35 -0600'
date_gmt: '2011-04-13 16:05:35 -0600'
categories:
- internet
- startups
tags:
- hosting
- colocation
- data-centers
---
In [part 1](/gregr/weblog/2011/04/11/choosing-a-colocation-vendor-overview-part-1/), we had a quick overview of things to think about when looking at colocation vendors and data centers. In [part 2](/gregr/weblog/2011/04/12/choosing-a-colocation-vendor-network-and-bandwidth-part-2/), we looked into your network and your bandwidth usage. Today, we'll talk about power.

I pretty much ignored this when I first moved into a top-tier facility. I assumed if I was leasing one rack of space, they'd connect up enough power for me to fill that rack up with servers, and I wouldn't need to worry about it.

In reality, that was far from the truth. Power is the most important thing to think about in a data center.

Let me say that one more time, just in case you missed it. Power is the most important thing to think about in a data center. And you should spend some quality time thinking about it.

### Power density

Here's a scenario, which, uh, may or may not be based on a true story. You're growing fast. You need servers, pronto. And you want to make sure you have enough room to scale to more servers. So you call IBM, and the sales guy comes in with small army and they start talking up their blade servers. And you just about fall over...not only do they look cool, but you can fit 14 blades in one 7U chassis! Six of those will fit in a rack, and you do some mental math, thinking about how many processor cores you can fit in those racks you just leased at your hosting facility. Growth problem solved. You're almost ready to pull the trigger.

You just need to make sure you have enough power outlets in your rack to plug these babies in. You call your host's engineer on the phone, bragging about how many processor cores you're going to have, and has he heard about the new Binford SS-9000 blades with the 10-core processors? And you hear him tapping away on his keyboard in the background, and you're just not getting the excited reaction from him you were hoping for.

Then he points out that those blade enclosures you are talking about have four 2300W power supplies each. Six enclosures. That's 55 kW. And while you're unlikely to actually use 55kW at any given moment, even say 25 kW would be a lot.

No problem, you think. I'll just keep adding power circuits as I keep adding blade enclosures, as my business grows. What's a few bucks for power when I'm getting 140 cores in 7U? This is gonna be great.

But over the course of the next half hour, as he explains the data center's version of the birds and the bees to you, you start to see the light. See, the problem isn't whether or not they can drag in enough power cables into your racks. They can.

The problem is cooling.

Every data center has some amount of power they can dissipate per square foot. It's essentially the capability of the cooling systems they have. Some facilities are more efficient than others, but everyone has a number. And you can't go over it. So you can have that rack that's got 6 enclosures full of blades if you want it - but you might have to have, say, 100 sq. ft. of empty space around it to ensure it can be cooled. And yes, you're going to pay for that space!

In real life, you will often end up leaving empty space in some of your racks for just this reason.

So now you know. Power density is one of the most important things you need to think about as you're planning your data center future. Talk to your hosting company's engineers about it; you're not the first one to have questions about it, and it's going to affect you. If not now, later.

### Multiple power circuits

On its way to your rack, your power has to come through a bunch of distribution equipment. Someday there could be a failure in some piece of equipment, out of your control. So, if you are allowed to (and you should be), you should have power from multiple independent circuits coming into your equipment.

Mission-critical servers that will cause you pain if they go down, like database servers and such, should probably have multiple power supplies, and you should make sure each server is plugged into at least two independent circuits.

Other more failure-tolerant equipment (or as I like to call them, "disposable") could be plugged into a single circuit each. So if you have 10 web servers, maybe plug 5 of them into each circuit.

But here's the important part about this. Do some modeling as to what exactly will happen if you lose a power circuit. Depending on what's connected, and how, it's likely that your other circuit will need to absorb some of the load from the circuit that went down, and is now drawing more current. Make sure to model these loads (call your equipment manufacturers if you need more data from them), and understand what will happen in different power scenarios.

And while I'm thinking of hard-learned tips, here's another one to think about while you're doing your power modeling - don't load your power circuits up anywhere near their max capacity. Something like 50% would be more reasonable.

At one time we were living on the edge in terms of power in one particular rack, because we didn't do this modeling. For whatever reason we ticked over the max on one circuit, and a circuit breaker tripped, taking it down. This caused a small surge on the other circuit due to the power supplies connected to it having to work harder. (can you guess what's coming?) And then, you guessed it, this additional load on the second circuit caused its circuit breaker to trip. Two circuits, two breakers, no power.

Do your modeling. It's not optional.
