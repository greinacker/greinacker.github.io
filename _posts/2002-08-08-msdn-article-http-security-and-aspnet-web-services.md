---
layout: post
status: publish
published: true
title: 'MSDN Article: HTTP Security and ASP.NET Web Services'
date: '2002-08-08 10:28:57 -0600'
date_gmt: '2002-08-08 17:28:57 -0600'
categories:
- Uncategorized
tags: []
---
**MSDN Article: HTTP Security and ASP.NET Web Services**

> *There's a* [*new article*](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnwebsrv/html/httpsecurity.asp) *up over on the* [*MSDN site*](http://msdn.microsoft.com)* that discusses various aspects of HTTP security for ASP.NET based web services. \[*[*Drew's Blog*](http://radio.weblogs.com/0104813/)*\]*

Thanks for the pointer, Drew; a good introductory article, about which I have a couple of quick comments.  First, the author only discusses authenticating with Basic/Digest/Certificates against the Active Directory store; probably because this is all IIS supports out of the box.  This isn't a fault of the article; but people should be aware there are other options.  There are numerous reasons you might want your credential store somewhere else (existing database, etc.); to do this, you have to write the code yourself (or use my [sample code](/gregr/weblog/misc/samples.html)).

Second, there is a sentence in the article I just can't let go:

> *Digest authentication encrypts the caller's credentials using a shared secret called a nonce.*

Hmm...Digest authentication does not encrypt the caller's credentials; it hashes them.  That's why the credentials (or at least a hashed version) must be available on the server for authentication to occur (as opposed to something like NTLM, where the password itself is not required on the server).  And second, the nonce is not a shared secret; it's passed clear-text - not much of a secret!
