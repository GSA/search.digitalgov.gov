---
layout: post
title: Our Open Source Strategy
category: blog
tags: open api about-us
---

We keep an eye on on our what our government counterparts are up to, both in the U.S. and other countries. We first came across [Gov.UK's](https://www.gov.uk) philosophy on and approach to [coding in the open](http://digital.cabinetoffice.gov.uk/2012/10/12/coding-in-the-open) a couple of years ago. It caught our attention and we realized we should also articulate our open source strategy.

## Use and Contribute to Open Source Projects

Since 2010, we've embraced and leveraged open source software to build our site search service for federal, state, and local government websites. This use of open source has allowed us to experience enormous growth over the past few years. In July 2014 alone, over 23 million searchers received results from our service&mdash;a five-fold increase since July 2010.

Our search service is now a complex system made up of many moving parts, including providing type-ahead search suggestions, serving search results, fetching, indexing, and caching content, and providing analytics.

Each of these parts is compiled into our codebase and, as we use open source components for our system, we contribute back to the projects.

## Code in the Open

We recently began to unravel our monolithic codebase so that we can share individual pieces of our code. To borrow the phrase from Gov.UK, we're now ***coding in the open***. 

We recently released the code for our [social media image](https://github.com/gsa/oasis), [jobs](https://github.com/GSA/jobs_api) and [recalls](https://github.com/GSA/recalls_api) API servers. They're our first foray into coding in the open. The source code for these API servers is in [our GitHub repo](https://github.com/GSA) and is available for anyone to see and contribute to. 

The data products for the jobs and recalls code are also open and available for anyone to consume on our [Developer hub](/developer/index.html).

These three servers and their underlying data now operate outside of our core search codebase.

Following this same model, moving forward, we plan to:

* Share first&mdash;For every new feature, we'll write the code so that *anyone* can make use of the code, not just us. If the public community contributes to the codebase, we'll be able to improve this feature without taxing our developers.
* Expose APIs&mdash;We'll expose our data products as APIs so that *anyone* can make use of the data, not just searchers on a government websites.
* Be our own customer&mdash;We'll use our own public code and data just like everyone else. We'll call our own API servers to integrate the data within our search results pages.

## Make Things Open to Make Things Better

We agree with Gov.UK that "to make things open makes things better." 

We have finite resources and we don't want to lose our focus on serving our agency customers and improving visitors' search experience on government websites. So, we won't be spending a lot of time to build or support a vibrant community around our code.

That said, we hope that exposing the pieces of our system will be useful to someone somewhere. We'll continue to provide the "ingredients" of our search service so that others will be able to make use of the code and data in ways that we could never imagine.

## And, We're Not Alone

We're not alone. Other federal agencies have embraced the approach of coding in the open and have [GitHub repos](http://gsa.github.io/federal-open-source-repos). Below are a just a few of our many favorites.

* The [Consumer Financial Protection Bureau](http://www.cfpb.gov) has embraced open source, including serving their public data sets through [qu](https://github.com/cfpb/qu) and sharing their work at <http://cfpb.github.io>.
* The [Food and Drug Administration](http://www.fda.gov) recently made public FDA datasets more accessible at [openFDA](https://open.fda.gov).
* GSA's newly-created [18F](https://18f.gsa.gov) has committed to [working in the open from day 1](http://18fblog.tumblr.com/post/93415834296/working-in-public-from-day-1).
* The [White House](http://www.whitehouse.gov) was in the forefront of using open source software in the federal government with their use of Drupal. They're continuing to lead by example by opening up the code for their [We the People petitions](https://github.com/WhiteHouse/petitions) and [iOS](https://github.com/WhiteHouse/wh-app-ios) and [Android](https://github.com/WhiteHouse/wh-app-android) mobile apps.