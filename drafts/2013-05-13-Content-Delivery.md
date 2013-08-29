---
layout: post
title: "USASearch and Content Delivery"
---

# Evolution 

USASearch migrated to an open source platform in 2010 with the primary focus of delivering relevant search results in sub-second response times. USASearch architected a system that returns search results quickly, but at the beginning we did not leverage any content delivery technologies. As we have grown our customer base, we scaled with the help of our content delivery partner, Akamai.  We have had several customers ask us questions in regards to USASearch scalability, content delivery, and failover, so we thought it made sense to address this in a post.

# How It Works

Let's take a student conducting a search on the White House web site for the "4th of July."  When they hit 'enter' the query will go to Akamai who determines if the query is cached within USASearch's specified period of time. (Our caching window is short as no one wants to see old search results.)

![Cached](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/cdn-cached.png "Cached")

This is the fastest possible way to serve search results as the user gets the results page from Akamai's closest geographic server. USASearch has worked over time to serve more and more content through Akamai. While this has been an evolution over the last couple years, USASearch is now offloading 90% of its content delivery through Akamai (an astounding percentage!)

## Multihoming

If USASearch doesn't have a query cached, we use Akamai's multi-homing technology. Multi-homing is fancy way of saying that the user automatically goes to the closest possible USASearch server, thus maximizing the speed that the results gets returned.

![Multi](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/cdn-multi.png "Multi")

# Other Benefits of Content Delivery for USASearch

## Automatic Failover

Should USASearch have an issue with one of its server locations, Akamai's multi-homing  will automatically send the traffic to the online data center. This serves as the USASearch "failover." USASearch does not have a "back-up" data center in the classic sense, so USASearch can to maximize all available data center assets.

## Security

Unfortunately, USASearch and its customer base are subjected to attempts to disrupt the operation of their public web services. Most government web sites have to deal with the threat of DDoS (distributed denial of service attacks). Akamai's content delivery network provides protection to USASearch as it is the "front line" for all USASearch queries. The Akamai network determines whether a dramatic spike in traffic is "normal" (for instance, a search for "tax return" before April 15th) or whether someone is trying to do harm to the service.

## Cost

Given that Akamai serves almost 90% of our content, USASearch has not had to increase its bandwidth consumption even with a significant rise in traffic and customers. 

# Summary

While USASearch did not achieve this overnight, we have been able to get to 90% through an iterative process that did take many, many months. However, the investment as paid off as USASearch has been able to double its customer base without increasing its infrastructure.
