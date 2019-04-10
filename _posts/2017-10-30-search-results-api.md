---
layout: post
title: Showing Results Within Your Agency's Website
category: manual
tags: api activate-search
---

We offer an API that allows agencies to display results from our service on their website. Instead of searchers going to our hosted search results page, agencies can use the "Search Results API" to pull results from our service and display the results within their own pages. Agencies that want to maintain an exact match of their headers, footers, and other branding are encouraged to use this API.

The API exposes all relevant results “modules” in a single JSON call, including:

* Web results
* [Best Bets](/manual/best-bets.html)
* [Health topics](/manual/govbox-health.html)
* [Job openings](/manual/govbox-jobs.html)
* [Recent tweets](/manual/twitter.html)
* [Recent news](/manual/rss.html)
* [Recent videos](/manual/youtube.html)
* [Federal Register documents](/manual/govbox-federal-register.html)
* [Related searches](/manual/display-overview.html#modules)

***Note about Web Results:*** To retrieve web results through this API, you must either use our indexes (populated via the [i14y API](/developer/i14y.html) or via [RSS](/manual/rss.html)), or you must purchase an API key from Bing.

This API is available for use on official government websites only. You must be a Search.gov customer to access the instructions. [Sign in](https://search.usa.gov/sites) is required. 

Instructions can be found under [Admin Center](https://search.usa.gov/sites) > YourSite > Activate Search > Search Results API Instructions. The Search Results API key can be found under [Admin Center](https://search.usa.gov/sites) > YourSite > Activate Search > API Access Key.
