---
layout: post
status: publish
published: true
title: Authentication and .NET Remoting
date: '2002-10-20 18:29:06 -0600'
date_gmt: '2002-10-21 01:29:06 -0600'
categories:
- Uncategorized
tags: []
---
Prompted by a few questions, I thought I'd post about using my [Basic and Digest authentication modules](/gregr/weblog/2002/06/09/web-services-security-2/) with .NET remoting. As you're probably aware, .NET remoting does not include (out of the box) any built-in authentication mechanism. However, you can leverage IIS to authenticate requests if you wish; [Ingo](http://www.dotnetremoting.cc/DotNetCentric/) discusses using the IIS implementations of Basic and Integrated Windows authentication in [his book](http://www.amazon.com/exec/obidos/tg/detail/-/1590590252). However, as he points out, Basic requires using SSL, and IWA will not work with most typical firewall configurations. Well, as I've said in the past, Digest is a good alternative to these two.

I will describe here the necessary code to use the [Basic or Digest authentication modules](/gregr/weblog/2002/06/09/web-services-security-2/) with .NET remoting in IIS. Some code has been omitted for brevity, but all the important parts are here. :-)

Imaging a remote object implementation in RemoteServer.dll, containing the following:

```
namespace RemoteServer
{
  public class Scoop : MarshalByRefObject
  {
    public Scoop()
    {
    }

    public string GetTheScoop(string name)
    {
      return “Here’s the scoop, ”
        + Thread.CurrentPrincipal.Identity.Name + “!”;
    }
  }
}
```

To host this in IIS, your web.config file might look something like:

```
<configuration>
  <system.runtime.remoting>
    <application>
      <service>
        <wellknown mode=”SingleCall”
          type=”RemoteServer.Scoop,RemoteServer”
          objectUri=”Scoop.soap” />
      </service>
    </application>
  </system.runtime.remoting>
</configuration>
```

If you want to use the Digest authentication module, all you need to do is add the required items to this file:

```
<configuration>
  <system.runtime.remoting>
    <application>
      <service>
        <wellknown mode=”SingleCall”
        type=”RemoteServer.Scoop,RemoteServer”
        objectUri=”Scoop.soap” />
      </service>
    </application>
  </system.runtime.remoting>
  <system.web>
    <authentication mode=”None” />
    <authorization>
      <deny users=”?” />
    </authorization>
    <httpModules>
      <add name=”DigestAuthenticationModule”
      type=”Rassoc.Samples.DigestAuthenticationModule,DigestAuthMod” />
    </httpModules>
  </system.web>
  <appSettings>
    <add key=”Rassoc.Samples.DigestAuthenticationModule_Realm”
    value=”RassocDigestSample” />
    <add key=”Rassoc.Samples.DigestAuthenticationModule_UserFileVpath”
    value=”~/users.xml” />
  </appSettings>
</configuration>
```

And finally, modify the client code which accesses the service to provide credentials:


```
static void Main(string[] args)
{
  ChannelServices.RegisterChannel(new HttpClientChannel());
  RemotingConfiguration.RegisterWellKnownClientType(
    typeof(RemoteServer.Scoop),
    “http://localhost/ScoopRemoting/Scoop.soap“);

  Scoop srv = new Scoop();

  IDictionary props = ChannelServices.GetChannelSinkProperties(srv);
  props[“username”] = “test”;
  props[“password”] = “test”;

  string s = srv.GetTheScoop(“Greg”);
  Console.WriteLine(s);
}
```

In general, the complete ASP.NET HTTP pipeline is available for your use when hosting remote objects in IIS.
