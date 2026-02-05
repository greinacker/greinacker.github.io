---
layout: post
published: true
title: Web Services and Schema Validation
date: '2002-10-17 22:57:33 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
There was a lot of talk at the [DevCon](http://www.sellsbrothers.com/conference/) about writing your web service interface first in WSDL, and then implementing it in code.  This is in contrast to the method that the current tools tend to encourage; for example, with VS.NET, you can write your code, decorate the methods with \[WebMethod\], and automatically generate the WSDL.  I wholeheartedly agree with the first way - define your interface first, and implement second.  There are things you can do this way that the tools just won't do for you.

In the old days of COM, we might design an interface method in IDL like the following:

> <span style="font-family: Courier, monospace;">HRESULT IsOldGeezer(\[in\] int age, \[out\] VARIANT_BOOL\* pIsGeezer);</span>

All we can tell about the method is it takes an age as input, which must be an integer value, and returns an HRESULT and a boolean value.  Valuable information - but what are the valid values for age?  Hmm...we have no way to tell, without reading the documentation (if there even is any).

When you design your interface in WSDL, you define the parameters for your service and their types.  The types are usually defined with XML-Schema.  So the input age parameter might be defined as something like:

> <span style="font-family: Courier, monospace;">  
>   
>   
>   
>   
> </span>

Which gives us a lot more information - namely, the age must be an integer between 1 and 120.  Wow, this is great stuff - lots of information for our clients.  We had to write the above schema by hand (the .NET WSDL-generation tools will not generate such a restriction in the schema), but it's well worth it just for the additional information we give to the client.  \[It's worth noting that most auto-generated client proxies will also ignore the schema restrictions, and just type the age as an int value.\]

Now we've got a nice descriptive schema, and we implement the web service around it.  If you implement this service with .NET, you're going to end up with a function signature that looks something like (a few attributes omitted for brevity):

> <span style="font-family: Courier, monospace;">\[WebMethod\]  
> bool IsOldGeezer(int age) {}</span>

And yep, we could certainly get called with an invalid age of, say, 421.  This is because the ASP.NET plumbing, by default, does not validate the incoming message against the schema.

With .NET, a good way around this problem is to write a SoapExtension to validate against the schema.  I wrote such an extension, and I was going to post it with this note, when I noticed that [Aaron Skonnard](http://staff.develop.com/aarons/) wrote such an extension for an [MSDN Magazine article](http://msdn.microsoft.com/msdnmag/issues/02/11/XMLFiles/default.aspx).  I hate it when people beat me to it!  At any rate, though, you can just add an attribute to the web method to force a validation of the incoming message against the schema.

This brings me to my main point of this post (took me long enough!).  I've [said in the past](/gregr/weblog/2002/08/20/more-xml-tolerance/) to be extensible with your service interfaces, but to draw the line in the sand with your schema.  Use it to your advantage!  Use the great features of XML-Schema (like parameter value ranges, optional elements, substitution, etc.) which aren't readily available when defining interfaces in other ways.  And as long as you have the CPU cycles to spare, **validate the requests against the schema**.

 
