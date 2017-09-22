---
layout: post
title: Search.gov -- Index Transition FAQs
category: blog
tags: FAQs
---

In FY18, we’ll be changing our name to Search.gov, and will transition from leveraging commercial engines for search results to serving results from our own indexes.

We’ll be developing our own search indexes from your site content. We’ll accept content for real-time indexing via [i14y](/developer/i14y.html) (1st option, preferred). We’ll also start indexing content from URL lists (2nd option).

Other search features and your search results page will remain the same, and searchers should not notice a difference.

We’ll work closely with you to make sure everything goes smoothly through the transition. Please view our [blog post](/blog/searchgov-blog.html) for a more detailed explanation. 

We will update these FAQs with questions we hear from our customers. 
  
# General

[Q: What do I need to do in this new model?](#q-what-do-i-need-to-do-in-this-new-model)

[Q: What is the timeline for the transition?](#q-what-is-the-timeline-for-the-transition)

[Q: What do I need to do today?](#q-what-do-i-need-to-do-today)

[Q: Do I need to change any code on my website?](#q-do-i-need-to-change-any-code-on-my-website)

[Q: How was my site getting results before?](#q-how-was-my-site-getting-results-before)

[Q: Why are you changing your name?](#q-why-are-you-changing-your-name)

# Indexing

[Q: How will you index my site?](#q-how-will-you-index-my-site)

[Q: What if I already use i14y or RSS to send content?](#q-what-if-i-already-use-i14y-or-rss-to-send-content)

[Q: I use Drupal, is there a module I could leverage?](#q-i-use-drupal-is-there-a-module-i-could-leverage)

[Q: What if I have content in my CMS plus files stored on filesystems (such as PDFs)?](#q-what-if-i-have-content-in-my-cms-plus-files-stored-on-filesystems-such-as-pdfs)

[Q: Are there CMS integrations available, other than Drupal?](#q-are-there-cms-integrations-available-other-than-drupal)

[Q: What if we have no plans for a CMS?](#q-what-if-we-have-no-plans-for-a-cms)

[Q: How can I create or find a list of URLs for my site?](#q-how-can-i-create-or-find-a-list-of-urls-for-my-site)

# General

## Q: What do I need to do in this new model?
 
We’ll work with you to get your site sending content to i14y if you’re using a CMS, or you can provide us with an inventory of your URLs if you have a static site. If you’re unable to get a list of your URLs, we’ll want to discuss options with you.  See the indexing questions below for more information.

## Q: What is the timeline for the transition?
 
We’ll launch the first phase of the new index early in FY18. We are starting our outreach now, so that everyone has time to ask questions and get ready for the shift. We don’t yet have a hard deadline for getting everyone moved over, but we’re targeting early 2018.
 
## Q: What do I need to do today?

*CMS customers:*

We encourage you to set-up and test i14y as soon as possible. 

*Non-CMS Customers:*

We encourage you to explore how you can compile a list of your site URLs. You do not need to send us any information yet. 

## Q: Do I need to change any code on my website?

No: you do not need to update any code on your website. Indexing takes place in the backend of our system.

## Q: How was my site getting results before?
 
Since 2007, we have served search results from Bing’s index by default. We also use Google’s index to support certain Collections where Bing does not provide results.

## Q: Why are you changing your name?

We’re changing our name to make things simpler. In the past, we’ve been FirstGov Search, FirstSearch, USAGov Search, USASearch, and are currently DigitalGov Search. Our new name is short, simple, and easy to remember.

# Indexing

## Q: How will you index my site?
 
Based on your site setup, you have a variety of options. Below is our order of preference in terms of how we’ll get your content into our indexes (note: you may choose more than one approach):
 
* [i14y API](https://search.digitalgov.gov/developer/i14y.html) --  Our API allows you to update your search index in real-time. This is the preferred method.

* URL list (coming in FY18) -- If you can’t send us your content via i14y, then we will fetch and index the URLs that you provide. Our system will visit the URLs you provide and extract page titles, dates, and full text for indexing. You can use the URL indexing method in concert with i14y, for any non-CMS content. 

* [RSS feed](https://search.digitalgov.gov/manual/rss.html) -- We will still accept RSS feeds to update your indexes on a rolling basis. 

If you’re unable to do any of the above, [contact us](mailto:search@support.digitalgov.gov), and we’ll discuss options.
 
## Q: What if I already use i14y or RSS to send content?
 
If you have set up i14y already, or if you send your full site content via RSS, you do not have to change anything for the new model.
 
## Q: I use Drupal, is there a module I could leverage?
 
Yes! For customers who use Drupal as their CMS, our [Drupal module]( https://www.drupal.org/project/usasearch) eliminates the need for programming effort around the i14y API. This module is available for both Drupal 7 and 8.

The module is open source. We welcome pull requests and code contributions that will improve the module and offer new features.

## Q: What if I have content in my CMS plus files stored on filesystems (such as PDFs)?
 
If your site is on Drupal but you also have published material outside of Drupal (such as PDFs or old web pages), we’ll be able to search both CMS and non-CMS content together. 

You will need to send us non-CMS material as a list of URLs, while your Drupal content will come to us via the module. *Note:* PDFs count as non-CMS content even if they’re attached to Drupal nodes. Drupal doesn’t store the text of PDFs in its tables, so the module can’t send it to us.

## Q: Are there CMS integrations available, other than Drupal?
 
Our [i14y API](https://search.digitalgov.gov/developer/i14y.html) is a listener ready to recieve content from any system. We developed a Drupal module because it is the most popular CMS in government and to increase the adoption of i14y. 

We have the beginning stages of a [WordPress plugin](https://github.com/GSA/wp-digitalgov-i14y-indexer), and welcome contributions to finish it up. If you’re able to develop an integration for your particular CMS, please make it open source, so other agencies can leverage it as well.

## Q: What if we have no plans for a CMS?
 
You can send us a list of URLs for indexing.

## Q: How can I create or find a list of URLs for my site?

You should be able to run a command to export all of the URLs on your webserver, such as `ls` or `grep` or `dir`. Consult your friendly neighborhood server admin for assistance. 

Some sites have XML sitemaps that list URLs and files. Your sitemap may be incomplete, so you’ll want to review it.


