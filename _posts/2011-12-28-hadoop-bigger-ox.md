---
layout: post
title: I Didn't Try to Grow a Bigger Ox: How I Found Hadoop
category: blog
tags: analytics about-us
---

A year ago I rolled my first Hadoop system into production. Since then, I've spoken to quite a few people who are eager to try Hadoop themselves in order to solve their own big data problems. Despite having similar backgrounds and data problems, few of these people have sunk their teeth into Hadoop. When I go to Hadoop Meetups in San Francisco, I often meet new people who are evaluating Hadoop and have yet to launch a cluster. Based on my own background and experience, I have some ideas on why this is the case.

I studied computer science in school and have worked on a wide variety of computer systems in my career, with a lot of focus on server-side Java. I learned a bit about building distributed systems and working with large amounts of data when I built a pay-per-click (PPC) ad network in 2004. The system is still in operation and at one point was handling several thousand searches per second. As the sole technical resource on the system, I had to educate myself very quickly about how to scale up.

As I contemplated how doomed I would be should traffic levels increase much more, I remember wondering to myself, "How does Google deal with all that data?" The answer came to me in the form of the Google File System (GFS) paper and later the MapReduce paper, both from Google. It dawned on me that because Google was forced to solve a much larger problem, they had come up with an elegant solution for a whole range of more modest data problems running on commodity hardware. But it wouldn't be until 2010 that I would get to work with this technology firsthand.

As I wrote in an [earlier article](/blog/adopting-hadoop.html), I started re-architecting DigitalGov Search, the U.S. government's search system, in 2009 based on a solution stack of free, open source software including Ruby on Rails, Solr, and MySQL. A wave of déja vu hit me as I started worrying about what to do with the growing mountain of data piling up in MySQL and our increasing need to analyze it in different ways. I had heard that a new company called Cloudera, founded by some big data people from Yahoo!, Google, and Facebook, was making Hadoop available for the masses in a reliable distribution, much in the same way that RedHat did for Linux. Curiosity got the best of me and I bought the newly minted *Hadoop: The Definitive Guide* from O'Reilly. The most insightful part of the book to me was the very first sentence. It's a quote from Grace Hopper: "In pioneer days, they used oxen for heavy pulling, and when one ox couldn't budge a log, they didn't try to grow a bigger ox." I didn't want to grow a bigger server; I wanted to harness a bunch of small servers together to work in unison. The more I learned the more curious I got, so I started reading more. And that's when I hit my first roadblock.

I think people who have been working with Hadoop technologies for years and years sometimes forget just how rich and diverse the big data software ecosystem has become, and how daunting it can be to folks approaching it for the first time. When people at the Meetups say they are evaluating solutions to their data scaling problem, the answers they hear sound something like this: "Just use Hadoop Hive Pig Mahout Avro HBase Cassandra Oozie Sqoop Flume ZooKeeper Cascading NoSQL RCFile. Oh, almost forgot…cloud."

The thought of wading through all of that just to learn about what I needed to learn about was a bit too overwhelming for me, so I put the whole matter aside for a few months. Over time, I started to dive into each of these projects to understand the primary use case, how active the developer community was and which organizations were using it in production. I converged on the idea of using Hive as a warehouse for our data. I opted for Cloudera's distribution since I wanted to reduce the risk of running into compatibility issues between all the various subsystems. Having tracked down anomalies in a highly multi-threaded and contentious distributed Java system before, I liked the idea of someone else taking on that problem for me.

At some point, I had read everything I could read and grew impatient to get my hands dirty, so I decided to just download CDH3 on my laptop and give it a try. The tutorial instructions for the standalone version worked, and I successfully computed more digits of pi than I ever thought I'd need. After creating some sample data in Hive and running a few queries, I felt pretty confident that Hive would be the right tool for the job. I just needed to find somewhere to install and run HDFS (namenode, secondary namenode, and data nodes), Hadoop (jobtracker and tasktracker nodes), Hive, and Hue for a nice front end to it all.

I knew from my past experience how to stretch the limits of CPU, disk, IO, and memory on commodity servers, and I identified a few potential servers at our primary datacenter with resources I figured I could leverage. Once again I followed the tutorial instructions, this time for the fully distributed version of CDH3, and once again I started to compute pi. And that's when I hit my second roadblock. It took me a few days to figure out that I had a problem with DNS. Each machine needs to be able to resolve every other machine's name and IP in the cluster. Whether you do that via /etc/hosts or a local DNS server is up to you, but it needs to happen or the whole thing gets wedged. Once I got that sorted out, everything just started falling into place and I had Hive working in production within a few days. A week later, I started pulling out the MySQL jobs and deleting big tables, and that's been the trend ever since.

Over time, I've gone on to learn about using custom Ruby mappers in Hive, moving data back and forth between MySQL and Hive with Sqoop, and getting the data into HDFS in real-time with Flume. All of these components from the Cloudera distribution are working nicely in our production environment now, and I sleep well at night knowing I have such a solid, deliberate plan for growth. My initial investment in learning about the Hadoop ecosystem is really paying dividends, but when I think about all those people at the Meetups stuck in evaluation mode, I feel their pain. Does it have to be such a struggle?

The big challenge in my opinion is not that any one piece of the puzzle is too difficult. Any reasonably smart (or in my case stubborn) engineer can set themselves on the task of learning about a new technology once they know that it needs to be learned. The challenge with the Hadoop ecosystem is that it presents the newbie with the meta-problem of figuring out which of these tools are appropriate for their use case at all, and whether or not to even consider the problem today versus deferring it until later. In a way Facebook has it easy, because when you are adding 15TB of data per day, that decision is pretty much made for you.

For all the companies sitting in the twilight between the gigabyte and the petabyte who don't have Hadoop expertise in-house, there is a collection of free information to help guide people to the right solution space (Hadoop Tutorial, White Papers). These days, when I talk to people who are evaluating solutions to their big data problems, my advice to them is to break down their problems into a few discrete use cases and then work on ferreting out the technologies that are designed for that use case. Get a proof of concept to demonstrate that the technology can address your use case and convince yourself and others that you're on the right track. Work toward putting something simple into production. Lather, rinse, and repeat. I am still in that cycle myself, as these days I'm exploring HBase and OpenTSDB to give me low-latency access to time series data and Mahout to do frequent item set mining, but that's another article for another day.

***This post is cross-posted from [Cloudera](http://www.cloudera.com/blog/2011/12/how-i-found-hadoop/).{% external_link %}***