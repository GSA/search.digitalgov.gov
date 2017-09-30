---
layout: post
title: Search.gov -- The Road Ahead in 2018
category: blog
tags: roadmap 
---

We are pleased to announce some exciting upcoming changes to our service. On October 1st, we’ll become Search.gov. We’re changing more than just our name; in fiscal year 2018, we will use our own indexes to serve search results instead of relying on [commercial web search engines](/blog/searchgov-faqs-indexing.html#q-how-was-my-site-getting-results-before).

Why are we evolving in this direction? Licensing commercial search results is expensive and complex. As we’ve continued to grow, our costs have continued to increase, and a new model has become a necessity. 

Indexing changes will begin rolling out in early FY18 and will only affect where your web results come from. Your search results page will look the same, and our additional search features will also be the same: [Best Bets](https://search.digitalgov.gov/manual/best-bets.html), [Collections](https://search.digitalgov.gov/manual/collections.html), job postings, social media integrations, and so on.

In this new model, we’ll work closely with you to get your sites indexed. This post describes the different approaches we’ll take and what we’ll need from you, depending on which method is right for your site and needs. 

We know that one of the core features of our service is how simple it is to get your site search up and running. We’ll always strive to make the service easy to use.

Speaking of easy to use: we’re changing our name to make things simpler. In the past, we’ve been FirstGov Search, FirstSearch, USAGov Search, USASearch, and most recently DigitalGov Search. Our new name is short, simple, and easy to remember.

## Overview: What It Means To Use Our Indexes Instead of Commercial Web Indexes

Our current default is to serve search results from Bing’s index. Once a query is made, we get a set of results from Bing via API and display them on your search results page. We also use Google’s index to support certain Collections where Bing does not provide results. However, this past spring, Google announced they will be shutting down the API we use for these searches in March 2018. This would leave us with a gap in our service. 

To address this gap and other licensing complexities, we will focus on using our own indexes in FY18 instead of getting Bing or Google results. This means that we will need to know what content is on your website, and get information about it into our indexes.

In the most basic terms, here’s what we’ll be doing:

![alt text](/img/basic-indexing-flow.png "Flowchart showing the major phases of search indexing: Discover, Parse, Index, and Search.")

*[Detailed diagram](/img/searchgov-flow.png "How Search.gov Works")*

Below are the options for how you can tell us about your site content. The list is divided into sections based on whether or not your website is on a content management system (CMS). There will be two primary ways to get content into our system: have your CMS send content to us via the i14y API, or send us a list of URLs.

## Customers with Content Management Systems (CMS)
 
### Preferred Option: i14y Content Indexing API (i14y)
 
Since 2015, we’ve offered an API called [i14y](https://search.digitalgov.gov/developer/i14y.html). I14y receives real-time content updates, which gives you full control over your search results. You can update and remove content, and decide exactly what will be shown as the result title for each item.

We are excited to get additional CMS customers using this powerful feature.

#### Customers with Drupal - We have a Drupal module for i14y!

For customers who use Drupal as their CMS, our [Drupal module]( https://www.drupal.org/project/usasearch) eliminates the need for programming effort around the i14y API. This module is available for websites in Drupal 7 and 8. 

#### Customers with Drupal + Content not in the CMS

If your site is on Drupal but you also have published material outside of Drupal (such as PDFs or old web pages), we’ll be able to search both CMS and non-CMS content together. 

Your non-CMS material will be indexed via the URL method described below, while your Drupal content will come to us via the module. *Note:* PDFs count as non-CMS content even if they’re attached to Drupal nodes. Drupal doesn’t store the text of PDFs in its tables, so the module can’t send it to us.

#### Customers with other CMSs

If you use a CMS that’s not Drupal, we encourage you to develop an integration with i14y and open source it so that other agencies can leverage it as well - a rising tide lifts all boats! If you’re unable to develop an integration, however, read on for other options.
 
## Customers without Content Management Systems
 
###  Indexing from Lists of URLs

In FY18, we will have the ability to index content from lists of URLs. You’ll provide a list of URLs so we know what content to index, and we will develop the title and other metadata from the pages you point us to. 

This is a good opportunity to review your page titles and other metadata, and to tidy things up. This will improve not only how results are presented in our system, but improve your SEO for Google and Bing as well.

If you’re unable to send us a list of URLs, please [schedule a time](mailto:search@support.digitalgov.gov) to talk with us.

## Customers who send us RSS feeds

For customers who have developed RSS feeds for our system: that process will remain unchanged. We’ve heard from many of you that maintenance is laborious, so you may want to investigate our new approaches, but you don’t have to change anything if you don’t want to. 

## Next Steps and Action Items

We are excited about our new direction. You can follow our progress by reading our monthly [Release Notes](https://search.digitalgov.gov/tagged/release-notes/).

_CMS customers:_

We encourage you to set-up and test i14y as soon as possible. 

_Non-CMS Customers:_

We encourage you to explore how you can compile a list of your site URLs, and to begin thinking about cleaning up your page titles and descriptions. You do not need to send us any information yet. You may want to check out our webinar [Structuring Your Site for Better SEO](https://search.digitalgov.gov/manual/training.html) that will give you tips on what sorts of things to be on the watch for.

### Do you have questions? 

You may join us for an open Q&A session on:

```
Tuesday, October 3rd, 1 PM ET
Call in number: 1-866-816-7357 / Passcode: 929827#
```

We also invite you to read our [FAQs](/blog/searchgov-faqs-indexing.html), which we'll update regularly.

Finally, we welcome you to email [questions and comments](mailto:search@support.digitalgov.gov).

The Search program has grown and evolved since its [inception in September 2000](/customers.html). We look forward to this next phase of service to you and the public. 

Happy searching,

The Search.gov Team

