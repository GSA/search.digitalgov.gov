---
layout: post
title: "Our Open Source Strategy"
---

# Our Open Source Strategy 

We keep a close eye on on our what our government counterparts are up to, both in the U.S. and other countries. We recently came across the Gov.UK’s philosophy on and approach to coding in the open. It caught our attention and we realized we should also articulate our open source strategy.

## Use and Contribute to Open Source Projects

Since 2010, we’ve embraced and leveraged open source software to build our site search service for federal, state, and local government websites. This use of open source has allowed us to experience enormous growth over the past few years. In March 2013 alone, 25 million searchers received results from our service--a 12-fold increase since March 2010. 

Our search service is now a complex system made up of many moving parts, including providing type-ahead search suggestions, serving search results, fetching, indexing, and caching content, and providing analytics. 

Each of these parts is compiled into our USASearch codebase and, as we use open source components for our system, we contribute back to the projects.

## Code in the Open

We recently began to unravel our monolithic codebase so that we can share individual pieces. To borrow the phrase from Gov.UK, we’re now ***coding in the open***. 

As most of you know, once a pie is baked, it is hard to get back the apples, but that’s pretty much what we’re going to try to do.

![Pie](http://f22818b4dfc10241d8a3-f1564c64756a8cfee25b6b19953b1d23.r31.cf2.rackcdn.com/pie.png "Pie")

We recently released our Jobs and Recalls API servers. They’re our first foray into coding in the open. The source code for these API servers is in GitHub and is available for anyone to see and contribute to. The data for these products are on our USASearch.HowTo.gov/Developer hub for anyone to consume.

Previously we would have developed these services within our private search codebase. Now, these two servers and their underlying data operate outside of our core site search service. 

Following this same model, moving forward, we plan to:

* Share first -- For every new feature, we’ll write the code so that it may be shared without affecting the integrity of our core service. If the public community wishes to contribute to the codebase, then this specific feature has the opportunity to improve without taxing our developers.

* Expose APIs -- Our data “products” will be exposed as APIs so that anyone may make use of the the data, not just searchers on a government websites.

* Be our own customer -- We’ll use our own public APIs for jobs and recalls data just like any other developer. We’ll call our own servers to integrate the search results within the search engine results pages.

## Make Things Open to Make Things Better

We agree with Gov.UK that “to make things open makes things better.” 

We don’t want to lose our focus on improving visitors’ search experience on government websites and we have finite resources. So we won’t be spending a lot of time to build or support a vibrant community around our code.

That said, we hope that exposing the pieces of our system will be useful to someone somewhere so we’ll continue to provide the “ingredients” of our search service so that others will be able to make their own tasty pies.

![Ingredients](http://f22818b4dfc10241d8a3-f1564c64756a8cfee25b6b19953b1d23.r31.cf2.rackcdn.com/ingredients.png "Ingredients")

## Other Federal Government Open Source Initiatives

Other US federal government agencies have embraced this approach as well, so we wanted to mention a few of them.

1. The White House -- The White House’s use of Drupal open a lot of open source doors in the federal government and they are continuing to lead by open sourcing their sourced their “[We people application][https://github.com/WhiteHouse/petitions]” as well as their mobile applications.

2. USA.gov -- USA.gov recently released its [iPhone app][https://github.com/usagov/usagov-ios-app]
3. Consumer Finance Protection Bureau (CFPB) -- Consumer Finance Protection Bureau is a new agency that has embraced open source through [qu][https://github.com/cfpb/qu]. qu is a data platform created by the CFPB to serve their public data sets. 

This is a public domain work of the US Government. This is the stable version; day-to-day development is at https://github.com/cndreisbach/qu.





