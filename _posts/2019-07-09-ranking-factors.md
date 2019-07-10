---
layout: post
title: How Search.gov Ranks Your Search Results
crumbname: Ranking Factors
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

Google and Bing hold their ranking algorithms closely as trade secrets, as a guard against people trying to game the system to ensure their own content comes out on top, regardless of whether that’s appropriate to the search. Search Engine Optimization (SEO) consulting has grown up as an industry to try to help websites get the best possible placement in search results.  You may be interested in our webinars on [technical SEO](https://search.gov/manual/training.html#site-structure-better-seo) and [best practices](https://search.gov/manual/training.html#search-doctor) that will help you get your website into better shape for search, and we’re also available to advise federal web teams on particular search issues. Generally speaking, though, SEO is a lot like reading tea leaves.

We at Search.gov share our ranking factors because we want you to game our system. This helps ensure that the best, most appropriate content rises to the top of search results to help the American public find what they need. 

This page will be updated as new ranking factors are added.

## Guaranteed 1st Place Spot

For any pages you want always to appear in the top of search results, regardless of what the ranking algorithm might decide, use a [Best Bet](https://search.gov/manual/best-bets.html). Like an ad in the commercial engines, Best Bets allow you to pin recommended pages to the top of results. Text Best Bets are for single pages, and Graphics Best Bets allow you to boost a set of related items. Our `Match Keywords Only` feature allows you to put a tight focus on the terms you want a Best Bet to respond to. [Read more here](https://search.gov/manual/best-bets.html).

## Ranking Factors

Each of the following ranking factors is calculated separately, and then multiplied together to create the final ranking score of a given item for a given search.

### File Type

We prefer HTML documents over other file types. Non-HTML results are demoted significantly, to prevent, for instance, PDF files from crowding out their respective landing pages.

### Freshness

We prefer documents that are fresh. Anything published or updated in the past 30 days is considered fresh. After that, we use a Gaussian decay function to demote documents, so that the older a document is, the more it is demoted. When documents are 5 years old or older, we consider them to be equally old and do not demote further. We use either the `article:modified_time` on an individual page, or that page's `<lastmod>` date from the sitemap, whichever is more recent. If there is only an `article:published_time` for a given page, we use that date.

Documents with no date metadata at all are considered fresh and are not demoted. [Read more about date metadata](https://search.gov/manual/metadata.html) we collect and why it’s important to add metadata to your files.

### Page Popularity

We prefer documents that users interact with more. Currently we leverage our own search analytics to track the number of times a URL is clicked on from the results page. The more clicks, the more that URL is promoted, or boosted. We use a logarithmic function to determine how much to boost the relevance score for each URL. For sites new to our service, please expect this ranking factor to take 30 days to fully warm up after your search goes live.

Note: Sites using the search results API to present our results on their own websites will not be able to take advantage of our click data ranking.

### Core Ranking Algorithm

Our system is built on Elasticsearch, which itself is built on Apache Lucene. For the first several generations, Elasticsearch used Lucene’s default ranking, the Practical Scoring Function. This Function starts with a basic Boolean match for single terms and adds in TF/IDF and a vector space model. Here are some high level definitions for these technical terms:

* **Boolean matches** are the AND / OR / NOT matches you’ve probably heard about.
  * This AND that 
  * This OR that
  * This NOT that
  * This AND (that OR foo) NOT bar
  * **Note** that while the relevance ranking takes these into account, we do not currently use these operators if entered by a searcher. Support for user-entered Boolean operators is coming in 2019.
* **TF/IDF** means term frequency / inverse document frequency. It counts the number of times a term appears in a document, and compares it to how many documents have that word. It aims to identify documents where the query terms appear frequently, and documents with more rare terms across the whole set of documents will get a higher score. Documents with a lot of common terms appearing in many documents will get a lower score.
  * They also have tempered the TF/IDF score with a method called **BM25**, which attempts to balance the TF/IDF scores of documents that are very different in length. If there are ten documents containing rare terms, the longest doc with the most instances of the terms would get a much higher score than a short doc with only a few instances of the terms. This makes intuitive sense, but when considered as a full pdf of a report vs the summary of the report, the full report isn't that much more relevant to the query than the summary is. BM25's length 'normalizatin' addresses that issue.
* The **vector space model** allows the search engine to weight the individual terms in the query, so a common term in the query would receive a lower match score than a rare term in the query.
* [Read detailed technical documentation here](https://www.elastic.co/guide/en/elasticsearch/guide/master/practical-scoring-function.html){% external_link %}

The latest versions of Elasticsearch takes into account the context of terms within the document, whether they are in structured data fields or in unstructured fields, like body text. 

* Structured data fields, like dates, are treated with a Boolean match method - does the field value match, or not?
* Unstructured data fields, like webpage body content, are considered for how well a document matches a query.
* [Read highly technical documentation here](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html){% external_link %}
