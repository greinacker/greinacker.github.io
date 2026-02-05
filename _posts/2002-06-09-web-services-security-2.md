---
layout: post
published: true
title: Web Services Security
date: '2002-06-09 08:00:53 -0600'
categories:
- Uncategorized
tags: []
---
Why does every article I read (here's the [most recent](http://www.developersdex.com/gurus/articles/146.asp)) on this subject lately advocate using custom SOAP headers to transmit user credentials for web services? I just don't get it. With the current state of affairs with web service security, you have 2 choices; you can use transport authentication (i.e. HTTP authentication mechanisms), or you can roll your own. Until WS-Security or SAML becomes a widely adopted reality (read: supported by multiple toolkits), this is pretty much it. Let's analyze this choice in a bit more detail.

**HTTP Security**

For public web services, we can use Basic, Digest, or a certificate-based scheme. The first thing we should get straight here is that you don't necessarily have to let IIS authenticate against your Windows Active Directory for these mechanisms to work; you can implement the authentication mechanism yourself, and use any credential store you like. I've written this code both in an unmanaged ISAPI filter, and in managed .NET HTTP Module code; it's certainly possible.

Basic is easy to implement, requires only one round trip, but carries with it the requirement to encrypt every call since the credentials are sent in essentially clear text (actually base-64 encoded). The big win here is that just about every web service client can work with Basic.

Digest is a little tougher to implement, but can still be done in a single round trip after the initial authentication. Passwords are no longer sent clear text (they are used to generate a hash), so this mechanism does not necessarily require transport encryption. Not as many clients understand this, but the client side is pretty easy to implement. Interestingly, Microsoft chose Digest authentication for their MapPoint.NET service.

The big win to using one of these methods is that there is a good chance that a client will understand how to authenticate with your web service without having to study your API and write special code to authenticate with your service. This is what standards are for, no?

**Custom Security**

I've seen 2 mechanisms for this proposed in many places, and I don't like either one of them. In particular:

*SOAP header carries credentials*

Well, a good idea in principle. After all, this is essentially what WS-Security is doing (more or less). It allows you transport independence and it allows you to encrypt or hash credentials without necessarily encrypting your whole message. The problem is that no one understands your API without reading the documentation, and then they have to carefully construct your custom SOAP headers by hand. Why not use Digest authentication until WS-Security is implemented by a critical mass of clients? Simpler, well-documented, and several SOAP toolkits already implement it out of the box.

*Login method*

The idea here is that you call a login method on the web service with your credentials, and you're passed back a token which you send with every call, perhaps in a custom SOAP header. Yuck. I can think of lots of reasons not to like this one: a) it's not self documenting; b) it requires a minimum of 2 round trips for any single web service call (3 if a logout method exists to clean up the session); c) implies a sessioned model on the services, which in many cases map better to a sessionless model. And what really gets me is this mechanism is usually justified with an argument like "this way you don't have to authenticate every call" - well, in the real world, it is typically about as expensive to validate that a security session token is indeed valid and extract the information from it, as it is to just re-authenticate. Unless your authentication is incredibly expensive, I just don't buy this argument.

Thoughts?

\[related: [Basic authentication sample](/gregr/weblog/2002/06/26/web-services-security-http-basic-authentication-without-active-directory/) \| [Digest authentication sample](/gregr/weblog/2002/07/09/web-services-security-http-digest-authentication-without-active-directory/)\]

------------------------------------------------------------------------

Since writing the above, I got some interesting comments from [Justin Rudd](http://www.pinetree-tech.com/weblog/). Below are excerpts from his comments (indented in blue), and my observations.

> *HTTP Security - I agree with your statements in this section. I've implemented all 3 types as well, and I don't want to ever implement them again :-) Especially since Microsoft now has the Internet Connection license which allows for unlimited CALs for internet users.*

True, but the internet connector only gets you by for authenticating against Active Directory. If you want to authenticate against, say, another LDAP directory, or a database, then you're back to writing the code.

> *Soap Headers - here is where we are going to disagree. I guess I'm not convinced by your argument that "no one understands your API without reading the documentation". Granted it is yet another aspect to learn, but unless you have a different security mechanism for every API I don't see the big deal.*

Good point. However, from the client's perspective, if I'm trying to glue together several web services, and they all use their own headers, I'm going to have to implement different code to authenticate with each of them. Different to the point of (in .NET):

> (service1)  
> servProxy1.AuthHeader.User = "greg";  
> servProxy1.AuthHeader.Password = "password";
>
> (service2)  
> servProxy1.CommonHeader.Credentials.Username = "greg";  
> servProxy1.CommonHeader.Credentials.Pass = "password";

Somewhat unfortunate to my eye.

> *You aren't going to know I'm using HTTP Digest Authentication if you don't look at the documentation. So I'm not sold on the documentation argument.*

Well, actually I will. If I make a call to your service without any credentials, I'm going to see from the challenge that you support Digest. In that sense, it's self-documenting. Not to mention my code can now look like:

> servProxy3.Credentials = new NetworkCredential("greg","password");

And I could have written this code without knowing anything about your authentication mechanisms, and if you're using a transport mechanism that my toolkit understands, then I don't have to worry about it.

> *Carefully crafting the SOAP headers is another false argument. It isn't like people are going to have to work with streams directly to do this. Most of the major toolkits out there have very easy ways to deal with SOAP headers.*

Agreed; I guess my point (not very carefully stated) was that the headers would all have to look different (see example above), and I must understand your service to craft the header.

> *The more complicated part is going to be what algorithm you chose. For example, RSA signatures are very common right now so they have a lot of support in Java, .NET, etc. But if I were to choose PGP signatures, that would cause more problems than crufting up some SOAP headers.*
>
> *Login - I agree that it isn't the best thing in the world, but you are describing how WS-Security and WS-License will work with Kerberos. You'll logon somehow (MS Passport or Project Liberty), and then take that binary ticket and transport it with each request. Maybe you don't like this aspect of WS-Security :-)*

Interesting point; I hadn't thought about that when I wrote this section. In this case, though, you can log in with some other external mechanism (Passport/Liberty), then pass along the ticket with your calls. I think this is subtly different that the web service itself exposing a "login" method, in that the "login" cost can be amortized across all of your web services you intend to communicate with.

I must confess I haven't done a lot of research into looking at how we will authenticate web service calls with Passport/Liberty; so I might have more/different comments once I see that in more detail. ;-)

> *I still don't agree with your self-documenting comment. But I described my reasons for that above. Your 2 round trips argument sounds to me like you logon and get a token before EVERY web service call. If that is the case, then yes this will be very, very wasteful.*

Well, I was assuming there would be 1 login call, and multiple service calls using that one token. But here's the thing - I think something like this makes much more complex on the client side. A typical client will login, save the session (so he can save the potential round-trips later), and call the service he wants to use. Sometime in the future, he's going to make another service call, so he's going to pass the token along again. The problem is, the token (by it's nature, in a secure system) is going to time out eventually. So now the client must have logic to catch this case, call "login" again, and start working. It sounds trivial, but it's a pretty big hassle.

Compare this with the case where credentials are sent on every call. The client must still catch the access denied case, but at least he doesn't have to retry at this point - he knows it's just not going to work.

> *I also agree with your sessioned model on the services argument. I've actually seen security systems where it was MORE expensive to validate the token then just to reauthenticate :-)*
>
> *All in all I would love to see WS-Security being implemented in more the of the major toolkits. But I also fear the day that this happens because people will start black boxing it. And I believe we'll be back to the days of DCOM where when everything works, it works great. But when something breaks...boy does it break :-)*

I totally agree. And you couldn't be more right about DCOM!
