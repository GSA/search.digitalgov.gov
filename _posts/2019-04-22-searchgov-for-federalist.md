---
layout: post
title: Setting up Search.gov for Federalist Sites
crumbname: Search.gov for Federalist
category: manual
tags: getting-started go-live site-launch
breadcrumbs:
  - label: Home
    url: https://search.gov/
  - label: Help Manual
    url: https://search.gov/manual/
  - label: Site Launch Guide
    url: https://search.gov/manual/site-launch-guide.html
---

For 18 years, GSA's Search.gov has transformed the public’s search experience on federal government websites. Agencies use our free, shared service to power over 2,000 search boxes on over 30% of federal domains. This page will walk you through the steps required to integrate Search.gov with your Federalist website.

## On the Federalist side of things, part 1

1. Confirm you have the `jekyll-sitemap` gem installed in your repo. [Read the docs here](https://github.com/jekyll/jekyll-sitemap) and [instructions for GitHub Pages here](https://help.github.com/en/articles/sitemaps-for-github-pages).

## On the Search.gov side of things:

1. Sign up for a [user account](https://search.usa.gov/sign-up).
1. Read our [Search Site Launch Guide](https://search.gov/manual/getting-started.html) if you’d like some direction.
1. Request that your domain be indexed by [emailing our team](mailto:search@support.digitalgov.gov). Note, the site must be publicly available for our indexer to be able to access your content.
1. Create and configure a search site in our [Admin Center](https://search.usa.gov/sites). Note: you’ll give your site a display name and a site handle, and you’ll need to enter the site handle in the search box form code on your website.
1. [Preview your search results](https://search.gov/manual/preview.html) once the indexing is complete.
1. Put finishing touches on your search site in the Admin Center - brand your results page, etc. 

## On the Federalist side of things, part 2

1. Add your site handle from the Admin Center to the `_config.yml` file in your Federalist repo, on the `searchgov_affiliate` line.
1. Include the `_includes/searchgov/form.html` search box in your `<header>` include.
1. If you would like type-ahead search suggestions to appear in your website’s search box, add include the `_includes/searchgov/script.html` block in your `<footer>` include.
