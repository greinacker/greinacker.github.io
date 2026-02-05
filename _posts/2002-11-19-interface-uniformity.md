---
layout: post
published: true
title: Interface Uniformity
date: '2002-11-19 18:07:13 -0700'
categories:
- Uncategorized
tags: []
comments: []
---
A while back, [Jon Udell](http://weblog.infoworld.com/udell/2002/11/08.html#a504) and [Mark Baker](http://www.markbaker.ca/2002/09/Blog/2002/11/08) were discussing addressibility and interface uniformity.  Mark [said](http://lists.w3.org/Archives/Public/www-ws-arch/2002Jun/0085):

> *getSunwStockQuoteRealtime()  
> getIbmStockQuoteDelayed()*
>
> *The problem with these is obviously that they're not readily reusable.  
> They do one thing and one thing only.  So we typically generalize them  
> by parameterization; permitting a single method to be used for multiple  
> quotes, by moving identifying information away from the method name  
> and into the parameters.  An obvious next iteration would be;*
>
> *getStockQuote( "SUNW", "realtime" );  
> getStockQuote( "IBM", "delayed" );*
>
> *However, generalization doesn't have to stop there.  We could do this;*
>
> *getQuote( "Stock", "SUNW", "realtime" );*
>
> *Which would permit other types of quotes to be retrieved, such as  
> insurance quotes, quotes for auto repairs, etc..*
>
> *Eventually however, generalization has to end.  I suggest that this  
> is as far as one can go with it;*
>
> *get(* [*http://nasdaq.org/quotes/stock/realtime/sunw*](http://nasdaq.org/quotes/stock/realtime/sunw) *)*

I would argue that the progression from getStockQuote to getQuote is where the usefulness of this model breaks down.  Suppose a getQuote function, which could be used a couple of ways:

getQuote("Stock", "SUNW", "realtime");  
getQuote("Insurance", "Allstate", "realtime");

If you design such an interface, you're making the assumption that a stock quote and an insurance quote have some amount of information in common.  In essense, you're designing an inheritance hierarchy, that says you have "quotes" and they can be either "stock" or "insurance" (or others).  But how do I work with the quote once I get it?  For stock quotes, I might be interested in the current price and the day's opening price.  For insurance, I might be interested in the premium and the deductibles.  Since you can't generalize any "quote" into a single interface, you need to treat each kind of quote differently.  And if this is the case, did you really buy anything from being able to retrieve them all with a single mechanism? 

It seems to me you just move the specifics down a level.  You can retrieve anything the same way, but you can't process it without knowing more specifically what it is.  And while it's nice to have an interface that is essentially type-less (which seems like what Mark describes), it's not as nice if the returned types can't be coerced into something you can use.
