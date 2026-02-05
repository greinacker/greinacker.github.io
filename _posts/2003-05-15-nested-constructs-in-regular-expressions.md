---
layout: post
published: true
title: Nested Constructs in Regular Expressions
date: '2003-05-15 17:45:10 -0600'
categories:
- Uncategorized
tags: []
---
Today I was looking for a way to do nested expression matching with regular expressions, and pretty much came up empty. Then after a trip to the bookstore to pick up [*Mastering Regular Expressions*](https://www.amazon.com/Mastering-Regular-Expressions-Jeffrey-Friedl/dp/0596528124/) by Jeffrey Friedl, I finally found it.

Interestingly, even now that I know what to search for :-), I can't find a single reference to this on the net or on MSDN.

With the .NET regular expression evaluator, there are (?) and (?\<-DEPTH\>) constructs that you can use to match nested expressions; for example, if you want to find matching parentheses, or matching HTML tags. Here's a "simple" example that will match nested &lt;div&gt; tags:

```
<div> (?><div (?<DEPTH>) | </div (?<-DEPTH>) | .? )* (?(DEPTH)(?!))</div>
```

Which will match the part in red below:

<span style="color: #ff0000;">&lt;div&gt;this is some &lt;div&gt;red&lt;/div&gt;text&lt;/div&gt;</span>&lt;/div&gt;&lt;/div&gt;


This is pretty cool, I've got to say. I really can't do this justice; if you're interested, I recommend you pick up the book!
