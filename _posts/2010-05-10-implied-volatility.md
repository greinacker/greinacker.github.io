---
layout: post
published: true
title: Implied Volatility
date: '2010-05-10 16:11:58 -0600'
categories:
- trading
tags:
- options
- trading
- volatility
---
As many of you know, I've been spending much of my time lately trading stocks and options. It's been quite an adventure - I went from being a buy-and-holder starting in the mid-90's, to a day trader who thinks of a long-term position as something I hold over lunch. :-)

The longer-term positions I do hold are usually option positions. Over the last year or so, I've been learning the ins and outs of option trading; the greeks, the vix, implied volatility, all of that. I remember one of the [first articles](http://www.optiontradingpedia.com/free_option_greeks.htm) I read about the greeks - all I could think was, how am I supposed to remember all this? But as time goes on, things all started becoming more clear.

Except, of course, for this concept of implied volatility.

Now, just like everybody else, I read that there's this thing called the [Black-Scholes model](http://www.optiontradingpedia.com/free_black_scholes_model.htm) for option pricing, and you plug in a bunch of stuff and out comes the price of the option. Most of what goes into that calculation (or one of the other options pricing models) are facts - the current stock price, time to expiration, etc. But part of what goes into that is this notion of expected, or implied, volatility.

Hmm. At first glance one would assume this implied volatility has something to do with the historical volatility. While that's partially true in most cases, it's not a good assumption.

[![augen1.jpg](/gregr/weblog/assets/uploads/2010/05/augen1.jpg)](http://www.amazon.com/Volatility-Edge-Options-Trading-Strategies/dp/0132354691/ref=sr_1_2?ie=UTF8&s=books&qid=1273531724&sr=8-2)And then finally, out of the blue, it all clicked. I was reading [The Volatility Edge in Options Trading](http://www.amazon.com/Volatility-Edge-Options-Trading-Strategies/dp/0132354691/ref=sr_1_2?ie=UTF8&s=books&qid=1273531724&sr=8-2) by Jeff Augen, which is a fantastic (but definitely non-beginner) book which discusses some statistical approaches to option trading. And somewhere in this book, it all suddenly became clear.

At a given moment in time, where all other things are equal (so all other variables are fixed), the price of an option is related to its implied volatility (IV). If IV goes up, the price goes up.  Ok, great. Didn't need a long blog post for that.

But you can also think of it the other way. *If price goes up, IV goes up.* And make no mistake - fancy equations aside, options are priced based on supply and demand.

IV isn't something magical that's calculated by "them", and foisted on the rest of us. Rather, one can think of it as a way to express how much premium exists in an option. If an option is trading on the offer, you'll see IV higher than if it's trading on the bid, because the transaction price is higher.  If you buy enough of them to drive up the price, that will manifest as a higher IV.  And in the last few hours of option trading on expiration Friday, when there's technically still a day to expiration (equity options technically expire on Saturday), you'll see the IV drop to nearly zero in order for the option price to drop to its intrinsic value.

I'm sure many will argue, and most won't care...but this was really the last piece of the way options are priced to "click" for me. So I wanted to write it down, in the hopes of helping someone else get through it all a little more easily.
