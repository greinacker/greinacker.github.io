---
layout: post
published: true
title: RPC vs. Document WSDL encoding
date: '2002-08-26 09:19:12 -0600'
categories:
- Uncategorized
tags: []
---
> *"There is very little reason for folks to quibble over programming models when the choice is rpc/enc or rpc/lit, but the difference between doc and rpc is clear, it's the choice between send(document) vs someOperation(parameters\[\]).  The programming model does matter." \[*[*snellspace*](http://www.snellspace.com/blog/)*\]*
>
> *I disagree there's a difference between doc and rpc. Your comment shows that you're paying too much attention to the fact that that WSDL portTypes have an element call with a name. Let's rename that to "" with an optional name for now. The reason the name was put in was so that you could refer to it later for bindings. However, there was NEVER any intent that the name would actually show up in the actual wire message. So, again we're down to "how do you want to program to that service?" Some like to program with XML directly - so then generate a send(org.w3c.dom.Document) method. If you want to deal with language objects, map that schema to a language type and generate a method that has that as an argument. What's the difference between the two? None, I maintain.  \[*[*Sanjiva Weerawarana's Radio Weblog*](http://radio.weblogs.com/0111930/)*\]*

I agree with parts of both of the above.  First, I think there is a philosophical difference between RPC-style and document-style API's.  As mentioned above, there really is a difference (to the API consumer) between send(document) and send(parameters\[\]).  It's subtle, but for certain classes of problems it's a real difference.  It may not be programmatically/syntactically different in some cases, but it might be a different manner of thinking.

Now on the other hand, I think this is all pretty orthogonal to the difference between rpc/encoded and document/literal.  You can certainly build a RPC-style web service using doc/literal encoding.  Your RPC messages will be defined via schema, rather than section 5 encoding, but the end result can certainly be the same.  To me, the encoding style specified in the WSDL defines the message format; but not the API "style".
