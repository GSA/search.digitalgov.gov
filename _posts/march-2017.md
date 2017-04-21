---
layout: post
title: March 2017 Release Notes
category: releases
tags: release-notes
---

## Highlighted Features

* Customers can use our [Supplemental RSS Feed](/manual/domains-advanced.html) and [Supplemental URLs](/manual/domains-advanced.html#supplemental-urls) feature to add missing content to their search results or to have complete control over what content appears. Previously, every item had to have a description. Now, descriptions are optional. If there is no description for an item, we’ll display snippets taken from an item’s full text. If a description is provided, we’ll show the description if it has a match with the query; otherwise, we’ll show snippets from the full text. Note: descriptions are still required for our [main RSS feed](/manual/rss.html) feature.

## Chores

* As of March 1st, we only support federal and District of Columbia websites. We wrapped up our behind-the-scenes work that facilitated this transition.
* Google announced that it is [deprecating the Google Site Search API](https://enterprise.google.com/search/products/gss.html). We use the GSS API to serve Google results in the limited cases where Bing results are not sufficient. We’ve renewed our license and will continue to use GSS until its end date of March 31, 2018. We are investigating how to best mitigate the effect of this deprecation.
* A new help manual page has been added for our [Analytics Alert](/manual/analytics-alerts.html) feature. We also revised the pages for [adding supplemental content](/manual/domains-advanced.html) to your search site and [filtering URLs](/manual/filter-content.html).

## Fixes

* Users who were deactivated from our system still received [Daily Snapshot](/manual/site-overview.html) emails of their site’s activity. This has been corrected, and deactivated users no longer receive those emails.
* On March 17th, our system was offline for 1 hour. We traced the problem to a specific configuration in our new logging mechanism. We mitigated the issue and will ensure the long term solution is stable.
