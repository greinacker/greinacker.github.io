---
layout: post
status: publish
published: true
title: COM Interop and .NET
date: '2003-08-08 12:26:35 -0600'
date_gmt: '2003-08-08 19:26:35 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
This wasn't obvious at all, so I thought I'd post this in the hopes of saving someone some pain:

If you have a non-managed application which creates a COM object implemented in managed code, by default *the latest installed version of the framework will be loaded*. Even if the COM object is specifically targeted to the 1.0 Framework. Took a while to finally find the [docs for this](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpguide/html/cpconruntimeinitializationfromcomapplication.asp):

> The following factors determine the runtime version:
>
> - A COM application can specify the runtime version in an application configuration file. For additional information, see [Configuring a COM Application for Side-By-Side Execution](http://msdn.microsoft.com/library/en-us/cpguide/html/cpconconfiguringcomapplicationforside-by-sideexecution.asp).
> - The runtime can already be loaded into memory by an extensible host, such as Microsoft Internet Explorer or Microsoft Office. The plug-in COM application uses the runtime that is loaded for the host to run managed components.
> - When strict control is needed, a COM application can preload a specific version of the runtime programmatically by invoking the **CorBindToRuntimeHost** method (exported from mscoree.dll). Alternatively, the application can target a different version of the runtime, based on an activated COM class, by invoking the **GetRequestedRuntimeVersionForCLSID** method (also exported from mscoree.dll) and passing the return value to **CorBindToRuntimeHost**.
>
> In the absence of these factors, the startup code loads the latest compatible runtime version installed on the computer.

Interesting. Makes sense now, I suppose, but not what I initially expected.

Which leads to an interesting problem. If an application needs to use two inproc COM objects, one which only works with the 1.0 Framework, and one that only works with 1.1, you're screwed. And these objects don't even have a way to tell anyone that they only work with a certain version. Seems the only safe thing to do, if you're such a COM object, is support *every* version of the framework that you might be loaded into. Hmm.
