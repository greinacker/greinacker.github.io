---
layout: post
published: true
title: Web Services Security - HTTP Digest Authentication without Active Directory
date: '2002-07-09 08:00:12 -0600'
categories:
- Uncategorized
tags: []
---
.NET HTTP Module - sample code

**Introduction**

[Digest authentication](http://www.ietf.org/rfc/rfc2617.txt?number=2617) has been around for quite some time, but has stayed in obscurity to some extent.  This is probably due to the fact that a limited number of servers support it, and a limited number of clients support it as well.  IIS also requires certain Active Directory settings to be made in order to use the built-in implementation.  However, it overcomes many of the weaknesses of Basic authentication.  In particular, it does not require an encrypted channel for communications, because passwords are not sent in clear text (as they are in Basic).  The benefits definitely outweigh the costs, as evidenced by Microsoft choosing to use Digest for their [MapPoint.NET](http://www.microsoft.com/mappoint/net/) service.

In a [previous article](/gregr/weblog/2002/06/09/web-services-security-2/), I discussed the merits of leveraging HTTP authentication mechanisms for web services, rather than rolling your own scheme with custom SOAP headers.  Later, I posted a [sample](/gregr/weblog/2002/06/26/web-services-security-http-basic-authentication-without-active-directory/) which demonstrated how to implement Basic authentication in .NET without having to authenticate against Active Directory, and without using a 3rd party ISAPI filter.  In this article, I will present an interoperable implementation of Digest authentication, also implemented in .NET managed code, without the use of the built-in IIS implementation and Active Directory.  As with the Basic sample, this code will run even on a shared server.  Note that both samples can run simultaneously on the same server, and your site can then support both Basic and Digest.

A link to download the code is at the end of this article.


**How does Digest Authentication work?**

Basically, the client starts by making an un-authenticated request to the server, and the server responds with a 401 response indicating that it supports Digest authentication.  The server also sends a *nonce*, which can be thought of as an opaque token.  The client then re-requests the resource, sending up the username, and a cryptographic hash of the password combined with the nonce value.  The server then generates the hash itself, and if it matches the request's hash, the request is allowed.

Let's explore this in a bit more detail.  For all of the gory details, refer to the [Digest specification](http://www.ietf.org/rfc/rfc2617.txt?number=2617).

The client first makes a request, looking like the following (some parts removed for clarity):

> <span style="font-family: 'Courier New'; font-size: small;">GET /FooService/basiconly/Service1.asmx HTTP/1.1  
> Accept: \*/\*  
> Host: localhost:8100  
> Connection: Keep-Alive </span>

The server responds with a challenge:

> <span style="font-family: 'Courier New'; font-size: small;">HTTP/1.1 401 Unauthorized  
> WWW-Authenticate: Digest realm="RassocDigestSample", nonce="Ny8yLzIwMDIgMzoyNjoyNCBQTQ", opaque="0000000000000000", stale=false, algorithm=MD5, qop="auth"</span>

Let's look at the WWW-Authenticate line in more detail:

- *Digest* - specifies that the server supports Digest authentication
- *realm="RassocDigestSample"* - specifies the authentication realm.  This is intended to give the client some idea of which credentials are being requested.
- *nonce="Ny8yLzIwMDIgMzoyNjoyNCBQTQ"* - specifies the nonce value the client should use for an authenticated request.
- *opaque="0000000000000000"* - an opaque value that the server needs the client to pass back to it unchanged.  Not used in this sample implementation.
- *stale=false* - indicates that the previous request was not denied because of a "stale" nonce.  If this parameter was true, it would mean that the request looked ok, and the credentials were correct, but the nonce was invalid.
- *algorithm=MD5* - specifies the hash algorithm to use when computing the digest.
- *qop="auth"* - indicates "quality of protection".  "auth" means authentication only, and "auth-int" means authentication plus integrity protection.  This sample implementation will only send "auth".

The client will then send an authenticated request:

> <span style="font-family: 'Courier New'; font-size: small;">GET /FooService/basiconly/Service1.asmx HTTP/1.1  
> Accept: \*/\*  
> Host: localhost:8100  
> Authorization: Digest username="test", realm="RassocDigestSample", qop="auth", algorithm="MD5", uri="/FooService/basiconly/Service1.asmx", nonce="Ny8yLzIwMDIgMzoyNjoyNCBQTQ", nc=00000001, cnonce="c51b5139556f939768f770dab8e5277a", opaque="0000000000000000", response="afa30c6445a14e2817a423ca4a143792"</span>

And looking at the Authorization header in more detail:

- *Digest* - indicates that this is a Digest authentication header.
- *username="test"* - the user name.
- *realm="RassocDigestSample"* - the authentication realm, specified in the WWW-Authenticate challenge.
- *qop="auth"* - the requested quality of protection; should match the challenge.
- *algorithm="MD5"* - the hash algorithm used to calculate the digest.  Should match the challenge.
- *uri="/FooService/basiconly/Service1.asmx"* - specifies the requested URI on the server.  It is repeated here to ensure interoperability through proxies.
- *nonce="Ny8yLzIwMDIgMzoyNjoyNCBQTQ"* - the nonce value used for the request.
- *nc=00000001* - indicates the number of requests the client has made using this particular nonce value.  This information can be used by the server to protect against replay attacks; it is ignored in this sample.
- *cnonce="c51b5139556f939768f770dab8e5277a"* - opaque value generated by the client.
- *opaque="0000000000000000"* - opaque value from the challenge.
- *response="afa30c6445a14e2817a423ca4a143792"* - the 32-character digest.

The digest is calculated based on the username, the password, the realm, the nonce, the nc value, the cnonce value, the qop value, and the uri value.  For more details on the actual hash calculation, refer to the [spec](http://www.ietf.org/rfc/rfc2617.txt?number=2617).

The important things to note about Digest authentication are the following:

1.  The password is never transmitted in clear-text, in contrast to Basic authentication.
2.  The server can optionally monitor and track the nc value, making it resistant to replay attacks (but at a price of having to track the necessary information).
3.  The server can carefully choose and restrict nonce values, such that a particular nonce is only valid for a certain time, only from a particular client, or only for a certain request.  This again provides resistance to replay attacks.

**Sample Implementation Details**

The sample code is designed to be installation-compatible with the Basic authentication example, in that the configuration, etc. are very similar; for example, they share the same users.xml file.

In this sample, nonce values are chosen to provide a minimum level of replay attack protection, but it is certainly weak.  The nonce itself is derived from the base64 encoding of the text representation of the nonce expiration time, which is 1 minute after the current server time.  So, a nonce handed out by this server will be valid for 60 seconds from the issue time.  If a client makes a request after the 60 seconds are up, a 401 response will be sent with a stale=true property in the WWW-Authenticate header.

Quality-of-protection is set to authenticate only; message integrity is not supported in this sample (although it would be very easy to add).

**Installation Instructions**

1\. Build DigestAuthMod.dll, and copy it to your web application's bin directory on your server.

2\. Make the following changes to your web.config file (in the `<system.web>` section):

- Change authentication line to: `<authentication mode=”None” />`. We need to disable the built-in ASP.NET authentication.

- Add an authorization section if you wish, such as

```
<authorization>
  <deny users=”?” />
</authorization>
```

  If you use DigestAuthMod to authenticate, you can still leverage the built-in ASP.NET authorization capabilities.

- Add the following lines to wire the DigestAuthMod.dll into the ASP.NET pipeline.

```
<httpModules>
  <add name=”DigestAuthenticationModule”
    type=”Rassoc.Samples.DigestAuthenticationModule,DigestAuthMod” />
</httpModules>
```

3\. Make the following changes to your web.config file (in the section), and edit appropriately:

```
<appSettings>
  <add key=”Rassoc.Samples.DigestAuthenticationModule_Realm”
    value=”RassocBasicSample” />
  <add key=”Rassoc.Samples.DigestAuthenticationModule_UserFileVpath”
    value=”~/users.xml” />
</appSettings>
```

4\. Copy the sample users.xml file into your virtual directory.

**The last thing you need to do is make sure all IIS authentication mechanisms (Basic, Integrated, and Digest) are turned off, and only anonymous is enabled**. You can do this within the IIS Manager, or typically hosting providers will provide a way to make sure that Basic is turned off for your hosted sites/virtual directories.

**Suggested Enhancements**

The following is a list of suggested enhancements to this code, should you choose to use it in a production environment:

1.  Enhance the nonce-generation code.  The potential replay vulnerability can be eliminated, at the cost of processing time on the server; however, it also limits the client's ability to pipeline multiple requests.  Weigh the cost and risk for your own application, and make the decision for yourself.
2.  Implement the message integrity checks.  There's really no good reason not to, and it's cheap insurance against messages getting modified in transit.
3.  Don't store clear-text passwords; instead, store the username and the associated digest.
4.  Change the credential store to a database, LDAP directory, or whatever you need for your application.

If you have any questions, please feel free to contact me at <gregr@rassoc.com>.

Greg Reinacker

**<span style="color: red;">update (6/9/02 6:43pm MST):</span>**

> The sample code has been modified to fix the following bugs:
>
> 1\. When using Opera, the cnonce value is a base-64 encoded value which may contain the '=' character.  The original parsing code did not correctly handle this situation.
>
> 2\. Mozilla uses the entire URI (including the query string) for the uri field in the authorization header, whereas Internet Explorer does not.  The original parsing code would not correctly handle the '=' characters in the header.
>
> Many thanks to [Justin Rudd](http://www.pinetree-tech.com/weblog/) for bringing these problems to my attention!

<span style="color: red;">**update (8/29/02 8:55am MST):**</span>

> If you're using this code on a Windows XP machine that is a member of a domain, IIS by default has Digest authentication turned on, and that will conflict with the implementation here.  [Gordon Weakliem](http://radio.weblogs.com/0106046) published a [fix](http://radio.weblogs.com/0106046/2002/08/28.html#a133) for this problem, partially reprinted here for completeness:
>
> > After some experimentation (and Greg's suggestion), I determined that you can use the IIS ADSI interface to shut off Digest. Here's a little bit of VBScript that does the trick on the root of the site:
> >
> >     ' Select the virtual directory you want to modify, you'd need to determine the 
> >     ' site number if you're running more than 1 site, but that's not supported on XP Pro. 
> >     ' append a virtual directory name here to specify only a subdir 
> >
> >     RootNodePath = "IIS://LocalHost/w3svc/1/Root" 
> >     Set oRootNode = GetObject(RootNodePath) 
> >
> >     If Err <> 0 Then 
> >       Display "Couldn't find the path " & RootNodePath & "!" 
> >       WScript.Quit (1) 
> >     End If 
> >
> >     oRootNode.AuthFlags = 1 
> >
> >     ' turn off all authentication except Anonymous 
> >     oRootNode.SetInfo
> >
> > The AuthFlags argument is a bitmask containing the authentication options for the given object, where 1 = Anonymous, 2 = Basic, 4 = NTLM and 16 = Digest. So this example sets the authentication to Anonymous. AFAICT, IIS doesn't expose a separate property for Digest as it does for the others, so it appears that this is the only way to shut off digest.

<span style="color: red;">**update (3/1/03 7:10pm MST):**</span>

> Updated the instructions above to fix the incorrect value in the appSettings section of the config file.

[DigestAuthMod code](/gregr/samples/DigestAuthMod.zip)

[Sample web service](/gregr/samples/DigestAuthTestSvc.zip)
