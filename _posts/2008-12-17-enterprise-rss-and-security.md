---
layout: post
published: true
title: Enterprise RSS and security
date: '2008-12-17 14:02:38 -0700'
categories:
- newsgator
tags:
- newsgator
- rss
- enterprise
- security
---
Peter Verhoeven wrote an [article](http://info-architecture.blogspot.com/2008/12/missing-security-features-in-enterprise.html) a few days ago talking about security features he feels are missing from Enterprise RSS tools, including [NewsGator Enterprise Server](http://www.newsgator.com/business/enterpriseserver/default.aspx). I wanted to address his concerns directly, explaining exactly why NGES handles secure feeds the way it does, and talk about how specifically one could address the issue he brings up.

**Public feeds**

So first, let's discuss the general case where no security is involved. If user A and user B both subscribe to publicly accessible feed X, the feed content is the same for both - so there exists only one copy of the feed in the system, and everyone sees that same copy and the contents therein. This is highly efficient for all systems involved.

**Secure feeds**

Now on to the slightly more complicated case. When NGES encounters a secure feed (more specifically, a feed which requires user credentials to access), it treats the content from the feed as secure. When user A retrieves feed Y using his credentials, the contents will be stored specific to user A. When user B retrieves the same feed Y but using her own credentials, the contents will be stored for user B. So now we essentially have two copies of the feed.

Why, Greg, why would you do this? It's the same feed, so you should only store it once. Right?

As it turns out, the answer it no. The issue is that NGES has no way of knowing if feed Y will return the same content for every user that has access to it. Just because the feed URL is the same, doesn't mean user A and user B will see the same thing when they retrieve it using their own credentials. So, the system stores the content separately.

**"Shared" secure feeds**

Ah, but now we get to the heart of Peter's issue. He has a case where he \_knows\_ the content for a given feed will be the same for every user that has access to it. The problem is, Peter knows, but NGES has no way of knowing.

The only part of the system that could possibly know this is the publisher of the feed - because it's the application generating the feed, and it knows whether it would generate the same feed for everyone that has access. But it's a valid case - there are indeed situations where the publishing system knows this is the case.

So, in NGES 3.x, it will actually look for a specific header in the feed that basically says "this feed will be the same for everyone." If it sees that header, it will still individually authorize access for every user trying to access the feed, but it will only retrieve and store the content once. So essentially, authentication and authorization works the same way - we are just making the behavioral assertion that the content in the feed may be shared among the group of people who have access.

\[note: I've slightly simplified here, but this is very close to what is actually required.\]

This code was initially written to optimize some of the content-retrieval that goes on with our SharePoint-integrated Social Sites Enterprise product...but there are definitely use cases for this feature beyond just SharePoint.
