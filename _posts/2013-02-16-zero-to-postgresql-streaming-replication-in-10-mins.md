---
layout: post
published: true
title: Zero to PostgreSQL streaming replication in 10 mins
date: '2013-02-16 14:10:04 -0700'
categories:
- development
tags:
- postgresql
- postgres
- replication
- streaming-replication
---
I've found a number of articles on the web for setting up streaming replication in PostgreSQL, but none of them seemed to actually put everything together that I needed, and none of them seemed to use the new [pg_basebackup](http://www.postgresql.org/docs/9.2/static/app-pgbasebackup.html) in PostgreSQL 9.1 and later. So with that in mind, here are a set of steps you can use to set up streaming replication, over the internet if you wish, using an encrypted SSL connection. We're not going to set up log archiving - we're going to rely solely on the streaming replication for now.

I'm assuming you have a master server set up on Ubuntu 10.04 or 12.04, running PostgreSQL 9.2.x, and you have a new slave server set up on the same OS and pg version. The IP of the master is 1.2.3.4, and the IP of the slave is 5.6.7.8.

First, create the replication user on the master:

{% gist 4968619 user.sh %}

Note that we are using REPLICATION permissions, rather than creating a superuser.

Next, configure the master for streaming replication. Edit postgresql.conf (on Ubuntu, this is at /etc/postgresql/9.2/main/postgresql.conf):

{% gist 4968619 master_postgresql.conf %}

We're configuring 8 WAL segments here; each is 16MB. If you expect your database to have more than 128MB of changes in the time it will take to make a copy of it across the network to your slave, or in the time you expect your slave to be down for maintenance or something, then consider increasing those values.

Then edit the access control on the master to allow the connection from the slave; in pg_hba.conf (/etc/postgresql/9.2/main/pg_hba.conf on Ubuntu):

{% gist 4968619 master_pg_hba.conf %}

In this case, 5.6.7.8 is the IP address of the slave that will be connecting for replication, and hostssl means this host can only connect via SSL.

You'll need to restart the master after making the above changes.

Now on to the slave. In the slave's postgresql.conf, add the following:

{% gist 4968619 slave_postgresql.conf %}

Then restart the slave. No changes are required in the slave's pg_hba.conf specifically to support replication. You'll still need to make whatever entries you need in order to connect to it from your application and run queries, if you wish.

That's all the initial setup we need to do. After you've done the above configuration, running the following script on the slave will copy the database over and begin replication (1.2.3.4 is the IP of the master):

{% gist 4968619 start_replication.sh %}

That script will stop the slave, delete the old slave cluster directory, run pg_basebackup connecting to the master to copy over the databases (you'll see the progress as it goes), create a new recovery.conf file, and start the slave. If you look at the logs after this script completes, you should hopefully see messages about it having reached a consistent recovery state.

Be careful - that script is going to delete the old database cluster on your slave, so make sure to read through it and understand what it's doing.

At this point, you can try writing data to the master database, and you should see it mirrored over to the slave. To check the replication status, you can run the following on the master:

{% gist 4968619 status.sh %}


If you found this guide handy, you might also find the [PostgreSQL 9 High Availability Cookbook](https://www.amazon.com/PostgreSQL-9-High-Availability-Cookbook/dp/1849516960/) useful as well!
