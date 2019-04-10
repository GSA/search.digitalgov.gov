---
layout: post
title: What Search.gov Indexes From Your Website
crumbname: What Search.gov Indexes
category: manual
tags: indexing seo
breadcrumbs:
  - label: Home
    url: https://search.gov/
  - label: Help Manual
    url: https://search.gov/manual/
  - label: Indexing
    url: https://search.gov/manual/indexing-with-searchgov.html
---

## Content

When we think about indexing pages for search, we usually think about indexing the primary content of the page. But if the page isn’t structured to tell the search engine where that content is to be found, it will collect the full `<body>` tag. Learn more on our post about aiming search engines at the content you really want to be searchable, using [the </main> element](https://search.gov/manual/how-search-engines-index-content-better-discoverability.html#main-element).

## Metadata

You can [read more detail on each of the following elements here](https://search.gov/blog/metadata.html).

### Standard metadata elements

* title
* meta description
* meta keywords
* locale or language (from the opening `<html>` tag
* url

### [Open Graph protocol](http://ogp.me/) {% external_link %} elements

* og:description
* og:title
* article:published_time
* article:modified_time

## File formats

In addition to HTML pages with their various file extensions, Search.gov indexes the following file types:

* PDFs
* Word docs
* Excel docs
* TXT
* Images can be indexed either using our [Flickr integration](https://search.gov/manual/flickr.html), or by sending us an [MRSS feed](https://search.gov/manual/rss.html). Note that images are not indexed during web page indexing, so you’ll need to use one of these two methods. 

Coming soon:
* Powerpoint

