---
layout: post
title: Showing Results Within Your Agency's Website
slug: Search Results API
category: manual
tags: api activate-search
breadcrumbs:
  - label: “Home”
  - url: https://search.gov/
  - label: “Manual”
  - url: https://search.gov/manual/
---

We offer an API that allows agencies to display results from our service on their website. Instead of searchers going to our hosted search results page, agencies can use the "Search Results API" to pull results from our service and display the results within their own pages. Agencies that want to maintain an exact match of their headers, footers, and other branding are encouraged to use this API.

The API exposes all relevant results “modules” in a single JSON call, including:

* Web results
* [Best Bets](https://search.gov/manual/best-bets.html)
* [Health topics](https://search.gov/manual/govbox-health.html)
* [Job openings](https://search.gov/manual/govbox-jobs.html)
* [Recent tweets](https://search.gov/manual/twitter.html)
* [Recent news](https://search.gov/manual/rss.html)
* [Recent videos](https://search.gov/manual/youtube.html)
* [Federal Register documents](https://search.gov/manual/govbox-federal-register.html)
* [Related searches](https://search.gov/manual/display-overview.html#modules)

***Note about Web Results:*** To retrieve web results through this API, you must either use our indexes populated by us from your [sitemaps](https://search.gov/manual/indexing-with-searchgov.html), by you via the [i14y API](https://search.gov/developer/i14y.html) or by us from your [RSS](https://search.gov/manual/rss.html)), or you must purchase an API key from Bing.

This API is available for use on official government websites only. You must be a Search.gov customer to access the instructions. [Sign in](https://search.usa.gov/sites) is required. 

Instructions can be found under [Admin Center](https://search.usa.gov/sites) > YourSite > Activate Search > Search Results API Instructions. The Search Results API key can be found under [Admin Center](https://search.usa.gov/sites) > YourSite > Activate Search > API Access Key.
