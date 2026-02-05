---
layout: post
published: true
title: Sam Ruby on Loosely Coupled Web Services
date: '2002-07-29 12:15:05 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *New essay:* [*Expect More*](http://radio.weblogs.com/0101679/stories/2002/07/29/expectMore.html)*.  \[*[*Sam Ruby*](http://radio.weblogs.com/0101679/)*\]*

Sam writes an excellent essay on upward and downward compatibility with web service contracts.  If I might paraphrase for context, he holds that we should be able to add or remove parameters from a web service contract, without adversely affecting existing clients (note he says a lot more than this - read the article!).

I tentatively agree with Sam; but only in the case where the new request can be validated by the WSDL-contained schema.  If you send me a new element I've never heard of, and I can't validate your request document against my schema, I don't consider it a valid request.  If you omit something, and my schema says it's required, invalid again.

Here's an example of where I believe your rules could get you in trouble.  Suppose a service to book an airline flight (coach only in v1), with the request schema:

```
<s:schema targetNamespace=”http://sample.org/“>
  <s:element name=”BookFlight”>
    <s:complexType>
      <s:sequence>
        <s:element minOccurs=”1″ maxOccurs=”1″ name=”Airline” type=”s:string” />
        <s:element minOccurs=”1″ maxOccurs=”1″ name=”FlightNum” type=”s:string” />
        <s:element minOccurs=”1″ maxOccurs=”1″ name=”Origin” type=”s:string” />
        <s:element minOccurs=”1″ maxOccurs=”1″ name=”Destination” type=”s:string” />
      </s:sequence>
    </s:complexType>
  </s:element>
</s:schema>
```

And a valid request document matching the above schema (SOAP headers omitted):

```
<BookFlight>
  <Airline>UA</Airline>
  <FlightNum>1234</FlightNum>
  <Origin>DEN</Origin>
  <Destination>SEA</Destination>
</BookFlight>
```

Now suppose you send me a document that also includes a "ClassOfService" element:

```
<BookFlight>
  <Airline>UA</Airline>
  <FlightNum>1234</FlightNum>
  <Origin>DEN</Origin>
  <Destination>SEA</Destination>
  <ClassOfService>First</ClassOfService>
</BookFlight>
```

As I read Sam's rules, this should be allowed and be processed exactly as before.  Now, suppose version 2 of my flight booking service supports booking in first class as well as coach.  If I add a "ClassOfService" element, which takes 'F' or 'Y' as the parameter, your document may now give unexpected behavior. 

For cases like these (and many more that I could come up with), I believe that loosely relying on the schema is a bad idea.  I think you should only extend the request in places where the schema specifically allows it; in the case above, if there was a xml:any extensibility element, you'd be fine, and you could put your extensions there.  If you want to omit parameters, you can only omit the ones allowed by the schema.

Sam mentions explicit extensibility points at the end of his article, but I got the impression he meant that while these were a good idea, we should allow the request extensibility even without these mechanisms.  Very-loose coupling might be ok when we're searching for books; but when we're doing financial transactions or other sensitive transactions, I think we need to be very specific about what we're doing.

Otherwise, I think that's just asking for trouble.
