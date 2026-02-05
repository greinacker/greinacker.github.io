---
layout: post
published: true
title: Web Services Security - HTTP Basic Authentication without Active Directory
date: '2002-06-26 08:00:08 -0600'
categories:
- Uncategorized
tags: []
---
.NET HTTP Module - sample code

In my last [mini-article](/gregr/weblog/2002/06/09/web-services-security-2/) on web services security, I talked a bit about using HTTP authentication mechanisms for web services.  I pointed out that it is not necessary to use Active Directory for this, and mentioned that the required code was not all that difficult.  I got a number of e-mails from people asking for examples; so in response, here is a fully working sample in 100% managed code demonstrating the use of HTTP Basic authentication, using a separate credential store (in this case, a XML file, although this would be easy to change to a database or LDAP store).

Note - an ISAPI filter is an equally effective way to implement this; however, many people have hosting arrangements set up such that they cannot install filters.  The code here will work in even a very restrictive shared hosting environment.

The implementation was designed with web services in mind, but it will work equally well with any .NET web application.  Also, the user credentials are stored in a XML file (users.xml by default).  In a real application, you will probably want to change this to access a database, or wherever else you store user information.

A link to download the code is at the end of this article.  Rather than walk through all of the code (it's pretty self-explanatory, download it and take a look), I will walk through here how to set it up and get it running.

To set up:

1\. Build BasicAuthMod.dll, and copy it to your web application's bin directory on your server.

2\. Make the following changes to your web.config file (in the `<system.web>` section):

- Change authentication line to: `<authentication mode=”None” />`.  We need to disable the built-in ASP.NET authentication.
- Add an authorization section if you wish, such as

```
<authorization>
  <deny users=”?” />
</authorization>
```

  If you use BasicAuthMod to authenticate, you can still leverage the built-in ASP.NET authorization capabilities.
- Add the following lines to wire the BasicAuthMod.dll into the ASP.NET pipeline.

```
<httpModules>
  <add name=”BasicAuthenticationModule”
    type=”Rassoc.Samples.BasicAuthenticationModule,BasicAuthMod” />
</httpModules>
```

3\. Make the following changes to your web.config file (in the `<configuration>` section), and edit appropriately:

```
<appSettings>
  <add key=”Rassoc.Samples.BasicAuthenticationModule_Realm”
    value=”RassocBasicSample” />
  <add key=”Rassoc.Samples.BasicAuthenticationModule_UserFileVpath”
    value=”~/users.xml” />
</appSettings>
```

4\. Copy the sample users.xml file into your virtual directory.

The last thing you need to do is make sure all IIS authentication mechanisms (Basic, Integrated, and Digest) are turned off, and only anonymous is enabled.  You can do this within the IIS Manager, or typically hosting providers will provide a way to make sure that Basic is turned off for your hosted sites/virtual directories.

That's all there is to it; just copy the code, and make some web.config changes.  If you have any questions, please feel free to contact me at <gregr@rassoc.com>.

Greg Reinacker

[BasicAuthMod code](/gregr/samples/BasicAuthMod.zip)

[Sample web service](/gregr/samples/AuthTestSvc.zip)

\[related: [Digest authentication sample](/gregr/weblog/2002/07/09/web-services-security-http-digest-authentication-without-active-directory/)\]
