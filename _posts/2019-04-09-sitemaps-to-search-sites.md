---
layout: post
title: How a Page on a Sitemap Becomes a Search Result
crumbname: Sitemaps and Search Results
category: manual
tags: go-live indexing
breadcrumbs:
  - label: Home
    url: https://search.gov/
  - label: Help Manual
    url: https://search.gov/manual/
  - label: Indexing
    url: https://search.gov/manual/indexing-with-searchgov.html
---

We often get questions about how sitemaps control the search results for a given site. The answer is, they don’t! This page will describe to you the relationship between sitemaps, search indexes, and the search experiences you create through the [Admin Center](https://search.usa.gov/sites).

## A frame for the relationships described below

Imagine a big lake. There are any number of tributaries feeding into the lake. There are fishing boats out on the lake, each loaded up with the gear they need and a guide to the kinds of fish they’re trying to catch.

## The Big Search.gov Index: the Lake

Like a lake with its fish, the common search index has all the content from all the sites we index, ready to be brought up by any number of different search site configurations.

The main difference in the search site setup process is the source of the web results. Like Google and Bing, when we index your content, we collect every site’s web pages into a big, common index. All search sites using our index reference this same common data pool.

## Sitemaps: the Tributaries

[XML Sitemaps](https://search.gov/manual/sitemaps.html) are like tributaries feeding into a lake. They do not feed into sitemap-specific indexes connected to particular search sites.

Sitemaps list the content available on websites in a machine-friendly format, so that search engines will know what to collect from the site. The [content indexed](https://search.gov/manual/indexing-with-searchgov.html) from your website goes into the big index mentioned above, along with the content from all other websites. You can, in theory, pull content from any website we have indexed into your search experience. This supports portal search experiences. 

## Search Site Setup: the Fishing Boats

Like a fishing boat on the water, you’ve decided what fish you’re going after, you know what corners of the lake to go to, and you’ve collected the gear you need to get the fish.

Search.gov used to rely on the Bing web index for our main search results. Customers would log in to the [Admin Center](https://search.usa.gov/sites) and use the [Domains](https://search.gov/manual/domains.html) list to include the content they wanted to pull from Bing. Now that we’re building our index in house, all this remains the same. You log in to the Admin Center and configure what you want your search to return on the results page.

## Tying it all together

We use sitemaps to inform what we index into our system. You use the Admin Center to determine what results will come out of the index when people search on your website.
Tributaries feed into a lake, and fishers can go out to any part of the lake to get the particular kinds of fish that they want. 

Following a particular page through this cycle looks like this:

1. A page is posted to a website
1. Its URL is added to the sitemap
1. Search.gov’s indexer reads the sitemap and picks up the URL
1. Search.gov’s indexer visits the page and [scrapes the content](https://search.gov/manual/what-searchgov-indexes.html)
1. The content is added to the index. Meanwhile, the search site had already been configured to include this content within the index.
1. A member of the public searches on the website
1. The query matches the page’s content
1. The page is returned as a search result
1. The searcher clicks on the URL on the results page
1. The searcher is brought to the page on the website

    <img class="img-responsive"
        src="/files/sitemaps-to-search-results.png"
        alt="Diagram showing a large circle, representing the Search.gov website. To the left of the circle is an array of small blocks, each representing an individual sitemap. Arrows point from the sitemaps to the large circle. To the right of the circle is a set of pentagons representing search sites. To the right of these is a vertical bar representing the Public. Arrows flow from the circle, through the pentagon and end at the bar, representing the flow of search results from the central Search.gov index through the search sites to the members of the public who are searching.">
