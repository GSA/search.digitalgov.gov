---
layout: post
title: Search.gov&#58; Index Transition FAQs
category: blog
tags: FAQs
---

*Updated March 2018*

In FY18, we changed our name to Search.gov, and are transitioning from leveraging commercial engines for search results to serving results from our own indexes.

We’re now developing our own search indexes from your site content. We will primarily be leveraging [XML sitemaps](/blog/sitemaps.html) to discover your content (1st option, preferred). We'll also accept content for real-time indexing via [i14y](/developer/i14y.html) (2nd option).

Other search features and your search results page will remain the same, and searchers should not notice a difference.

We’ll work closely with you to make sure everything goes smoothly through the transition. Please view our [recent status post](/blog/six-months-in.html) to learn more about the progress we've made, and you can [read the original announcement](/blog/searchgov-blog.html) as well. 

We will update these FAQs with questions we hear from our customers. 
  
# General

[Q: What do I need to do in this new model?](#q-what-do-i-need-to-do-in-this-new-model)

[Q: What is the timeline for the transition?](#q-what-is-the-timeline-for-the-transition)

[Q: What do I need to do today?](#q-what-do-i-need-to-do-today)

[Q: Do I need to change any code on my website?](#q-do-i-need-to-change-any-code-on-my-website)

[Q: How was my site getting results before?](#q-how-was-my-site-getting-results-before)

[Q: Why did you change your name?](#q-why-did-you-change-your-name)

# Indexing

[Q: How will you index my site?](#q-how-will-you-index-my-site)

[Q: How often will you update my index?](#q-how-often-will-you-update-my-index)

[Q: How will you remove items from the index?](#q-how-will-you-remove-items-from-the-index)

[Q: How does the sitemap control my search results?](#q-how-does-the-sitemap-control-my-search-results) 

[Q: What if I already use i14y or RSS to send content?](#q-what-if-i-already-use-i14y-or-rss-to-send-content)

[Q: I use Drupal, is there a module I could leverage?](#q-i-use-drupal-is-there-a-module-i-could-leverage)

[Q: What if I have content in my CMS plus files stored on filesystems (such as PDFs)?](#q-what-if-i-have-content-in-my-cms-plus-files-stored-on-filesystems-such-as-pdfs)

[Q: Are there CMS integrations available, other than Drupal?](#q-are-there-cms-integrations-available-other-than-drupal)

[Q: What if we have no plans for a CMS?](#q-what-if-we-have-no-plans-for-a-cms)

[Q: How can I create or find a list of URLs for my site?](#q-how-can-i-create-or-find-a-list-of-urls-for-my-site)

# General

## Q: What do I need to do in this new model?
 
We’ll work with you to get a good XML sitemap in place for your content, or set of sitemaps, as fits your use case. Sites using content management systems that are able to sent *all* content into an i14y drawer may investigate integrating with i14y. If you’re unable to do either of these things, we’ll want to discuss options with you.  See the indexing questions below for more information.

## Q: What is the timeline for the transition?
 
We launched the first phase of the new index in December 2017. We've reached the deadline Google had set for sunsetting their Site Search API, and are now disconnected from that service and supporting those searches from our own indexes. We continue to reach out to sites as we focus on indexing their content. We don’t have a hard deadline for getting everyone moved over, and are prioritizing high traffic search sites first for moving into our indexes. Over 90 search sites are already supported from our indexes.
 
## Q: What do I need to do today?

*CMS customers:*

We encourage you to set-up and implement [XML sitemaps](/blog/sitemaps.html) as soon as possible. Most content management systems have plugins that will facilitate creation of these sitemaps. Please also review your [robots.txt file](/blog/robotstxt.html) to ensure the sitemaps are listed there, and that all the content you want searchable is allowed to be indexed.

*Non-CMS Customers:*

We encourage you to explore how you can publish an [XML sitemap](/blog/sitemaps.html). Please also review your [robots.txt file](/blog/robotstxt.html) to ensure the sitemaps are listed there, and that all the content you want searchable is allowed to be indexed. 

## Q: Do I need to change any code on my website?

No: you do not need to update any code on your website. Indexing takes place in the backend of our system.

We do ask that you publish [XML sitemaps](/blog/sitemaps.html), and update your [robots.txt file](/blog/robotstxt.html).

## Q: How was my site getting results before?
 
Since 2007, we served search results from Bing’s index by default. We also used Google’s index to support certain Collections where Bing does not provide results. We're now serving these results from our own indexes, and are disconnected from Google.

## Q: Why did you change your name?

We changed our name to make things simpler. In the past, we’ve been FirstGov Search, FirstSearch, USAGov Search, USASearch, and most recently DigitalGov Search. Our new name is short, simple, and easy to remember.

# Indexing

## Q: How will you index my site?
 
Based on your site setup, you have a variety of options. Below is our order of preference in terms of how we’ll get your content into our indexes (note: you may choose more than one approach):

* [Structured URL list (XML sitemap)](/blog/sitemaps.html) -- We will fetch and index the URLs that you provide on an XML sitemap, and will monitor your sitemaps for new content and updates over time. Our system will visit the URLs you provide and extract page titles, dates, and full text for indexing. You can post multiple sitemaps for content from different platforms - [get the essential information about sitemaps here](/blog/sitemaps.html). This is the preferred method.
 
* [i14y API](https://search.digitalgov.gov/developer/i14y.html) --  Our API allows you to update your search index in real-time. Best for agencies with dedicated developer resources and single-platform publishing environments.

* [RSS feed](https://search.digitalgov.gov/manual/rss.html) -- We will still accept RSS feeds to update your indexes on a rolling basis. 

If you’re unable to do any of the above, [contact us](mailto:search@support.digitalgov.gov), and we’ll discuss options.

## Q: How often will you update my index?

If you have an XML sitemap, our default will be to monitor it daily for newly published or updated pages. If you have a need to have certain content searchable within minutes of publication, please [let us know](mailto:search@support.digitalgov.gov).

## Q: How will you remove items from the index?

We will be monitoring the status of pages in our index. If any start returning a `404 Not Found`, `403 Not Permitted`, `301 Permanent Redirect`, or other non-`200 OK` response, we will remove those items from the index. For redirects, we'll update the index with information from the target page. 

Removing a page from the sitemap will not remove it from the search index. If the page is still publicly accessible and returning a `200` response, you can [contact us](mailto:search@support.digitalgov.gov) to have it removed from the index, or you can use our [Filter URLs](/manual/filter-content.html) feature to suppress the item from appearing in search results.

## Q: How does the sitemap control my search results?

It doesn't! Sitemaps advertise to search engines what content is on a site that should be searchable. The Search.gov engine then brings that content into our index. Separately, the settings you manage in the Admin Center dictate how we should pull results from our index when people search for things on your site.

## Q: What if I already use i14y or RSS to send content?
 
If you have set up i14y already, or if you send your full site content via RSS, you do not have to change anything for the new model.
 
## Q: I use Drupal, is there a module I could leverage?
 
Yes! For customers who use Drupal as their CMS, please install the [XML Sitemaps module](https://www.drupal.org/project/xmlsitemap).

We also have a [Drupal module]( https://www.drupal.org/project/usasearch) that can jumpstart a connection with the i14y indexing API. This module is available for both Drupal 7 and 8, but we've found that the module only supports about half of the Drupal publishing models in government.

## Q: What if I have content in my CMS plus files stored on filesystems (such as PDFs)?
 
If your site is in a CMS but you also have published material outside of the CMS (such as PDFs or old web pages), we’ll be able to search both CMS and non-CMS content together. 

You will need to publish an XML sitemap of your non-CMS material, or you could manually add the content to your CMS-managed sitemap(s). *Note:* PDFs count as non-CMS content even if they’re attached within your CMS.

## Q: Are there CMS sitemap plugins available, other than Drupal?
 
Yes - see our [XML Sitemaps overview page](/blog/sitemaps.html) for a more complete list of tools.

## Q: What if we have no plans for a CMS?
 
You can still create an XML sitemap, though you may need to update it manually, or develop a regular server job to keep it updated.

## Q: How can I create or find a list of URLs for my site, to build a sitemap?

You should be able to run a command to export all of the URLs on your webserver, such as `ls` or `grep` or `dir`. Consult your friendly neighborhood server admin for assistance. 

Some sites have XML sitemaps that list URLs and files. Your sitemap may be incomplete, so you’ll want to review it.
