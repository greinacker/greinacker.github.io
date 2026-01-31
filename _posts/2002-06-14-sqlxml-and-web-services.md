---
layout: post
status: publish
published: true
title: SQLXML and Web Services
date: '2002-06-14 09:28:26 -0600'
date_gmt: '2002-06-14 16:28:26 -0600'
categories:
- Uncategorized
tags: []
comments: []
---
> *Microsoft SQLXML 3.0 lets you leverage you existing Transact-SQL stored procedures by generating WSDL files for single or multiple query resultsets.* [*This article*](http://www.fawcette.com/xmlmag/2002_06/online/webservices_rjennings_06_10_02/) *shows you how to take advantage of SQLXML 3.0's new capabilities, such as delivering strongly-typed DataSets to populate DataGrids. It also includes source code for a Visual Basic .NET Windows form consumer of sample Web services from the OakLeaf Web site.  
> \[*[*Sam Gentile's Radio Weblog*](http://radio.weblogs.com/0105852/)*\]*

You know, the whole idea of web services exposed from SQL Server is pretty cool - *for internal-use services*.  What I worry about, though, is people exposing these services directly on the internet.  Over the last few years, we've finally gotten to the point where people have learned not to expose their databases directly to the internet; but exposing web services from the DB makes it that much more tempting again.  I've seen newsgroup postings where people are thinking about doing this...pretty scary. 
