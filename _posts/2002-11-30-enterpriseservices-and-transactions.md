---
layout: post
status: publish
published: true
title: EnterpriseServices and transactions
date: '2002-11-30 18:34:19 -0700'
date_gmt: '2002-12-01 01:34:19 -0700'
categories:
- Uncategorized
tags: []
---
Ok, I'm going to barge in on this discussion that [Clemens](http://radio.weblogs.com/0108971/) kicked off.  Hope no one minds.  :-)  First, my general opinion is that if you *need* distributed transactions, object pooling, or a consolidated process model (for caching, etc.), then sure, EnterpriseServices is an easy way to get these features.  However, I hold that there is a huge class of applications that don't actually require any of these.

I wanted to specifically comment on something Ingo Rammer said about transactions.  To start it off, [John Lam wrote](http://www.iunknown.com/Weblog/EnterpriseServices.html):

> *If I'm writing a managed application that has a web-based front end, and I don't need **distributed transactions**, why do I need to care about Enterprise Services?*

To which [Ingo replied](http://www.dotnetremoting.cc/DotNetCentric/2002/11/30.asp#a351):

> *The second scenario in which I'd think about using EnterpriseServices is if I don't know the exact call chain of my infrastructure components. Using imperative, single resource manager transactions absolutely requires you to know the very call chain/s which will be used to call your infrastructure components.  
>   *
>
>   
>   public void **StoreCustomer**(Customer cust);  
>   public void **AddOrder**(Order ord);  
>
> *\[...\]  So, at least for me, the question which should be used to choose between declarative and imperative TX (and therefore also in favor or against EnterpriseServices) is not only "Do I need distributed transactions?" but also "Do I need transactions for which I don't know the exact call chains which will be used to access my infrastructure layer components?" and "Will these call chains ever change or could there be new ones?".*

So he's saying that in order to design a robust application with local non-declarative transactions, one needs to know every possible permutation of the call chain.  I beg to differ on this; a model I've used is as follows.  A (possibly optional) transaction parameter can be passed throughout the call chain (you could even make this implicit via the CallContext, but I haven't seen the need yet).  Each function operates based on the passed in transaction.  So the outside controller looks something like:

> using (SqlConnection conn = new SqlConnection(connectionStr))  
> {  
>   conn.Open();  
>   SqlTransaction trans = conn.BeginTransaction();  
>   
>   try  
>   {  
>     int custId = Customer.AddCustomer(custInfo, trans);  
>     Order.AddOrder(custId, orderInfo, trans);  
>     trans.Commit();  
>   }  
>   catch (MyException e)  
>   {  
>     trans.Rollback();  
>     // log error, throw exception, etc.  
>   }  
> }

and the lower level objects look something like:

> public int AddCustomer(CustInfo custInfo, SqlTransaction trans)  
> {  
>   int custId = 0;  
>   SqlConnection conn = null;  
>   
>   if (trans != null)  
>     conn = trans.Connection;  
>   else  
>   {  
>     conn = new SqlConnection(...);  
>     conn.Open();  
>   }  
>   
>   try  
>   {  
>     SqlCommand cmd = new SqlCommand(..., conn, trans);  
>     ...  
>   }  
>   finally  
>   {  
>     if (trans == null)  
>       conn.Dispose();  
>   }  
>   
>   return custId;  
> }

So they can operate in the presence of a transaction, or in the absense of one.  If there is not a transaction passed in, they would have the option of creating one, executing without one, or failing.  And if all critical (ie. transaction must be aborted) manifest themselves as exceptions, then the transaction outcome will be correct.

The benefit, obviously, is not having to use distributed transactions, and the associated overhead that comes with them.  In my opinion, the code above is not complicated, and other than the boilerplate code, the "way of thinking" is much the same as it is with using declarative transactions with EnterpriseServices.  And to come back to Ingo's point, I think if all of your business methods are designed like this, you can add/remove them at will from the call chain, and everything should still work.
