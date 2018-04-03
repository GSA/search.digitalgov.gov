---
layout: post
title: Six Months In&#58; Lessons Learned in the Transition to Search.gov
category: blog
tags: indexing roadmap
---

In September 2017 [we announced](/blog/searchgov-blog.html) that we would be moving away from using commercial search engines as our primary source of web results. This was driven by Google’s announcement that they would be sunsetting their Site Search API at the end of March 2018, and our desire to have more control over the quality, coverage, and cost of our web results than we were able to achieve with Bing.

We’d like to update you on our progress and share some lessons learned. Over the past months we’ve worked with many of you and listened to the challenges you face in your particular environments. In the fall we believed that encouraging agencies towards using our i14y indexing API was the best way to go. Having lived into it, we now know that we need to focus on indexing content directly off of your websites, leveraging structured lists of URLs known as XML sitemaps. The lessons here are presented in the order we learned them, and we've updated the [indexing FAQs](/blog/searchgov-faqs-indexing.html) to reflect the current approach.

## Lessons Learned

### 1. The API-first focus we began with isn’t viable as a standard solution

* Many agencies use content management systems for which we are unable to provide an integration, and struggle to create one on their own.
* Even though many agencies use Drupal, and may have been able to leverage our module, distributed site management and quarantine-like firewalling make it highly difficult to get i14y indexing up and running via the module.
* Mixed platforms for content mean that most sites will need other indexing support beyond just i14y.
* The number of indexes created by our API model isn’t scalable. Even though Elasticsearch, the search solution our system is built on, is designed for its indexes to expand to great size with ease, it doesn’t perform well with a high number of relatively small indexes.
* And finally, many agencies still have static sites, from which it’s close to impossible to export even a clean list of URLs for indexing, much less to push content out to an API over time.

### 2. Crawling is prohibitively resource-intense

* To assist some static sites in our early-transition group, we incorporated a crawler into our stack, to facilitate content discover in those websites. The crawler does a good job, but it’s still a manual process and automating for continuous discovery would require significant processing power.
* Crawl delays, as set in robots.txt files, have a serious impact on indexing speed. At a crawl delay of 10, it would take over two weeks to crawl a site of 150,000 pages.

### 3. Relevancy ranking is easiest to manage if all the content is in the same index

* In addition to search indexes holding data from pages and files, it can also have indicator data showing how a given piece of content should be ranked relative to other pieces of content. For sites who have sent web content into i14y drawer indexes and have content that we have indexed from static files, each index will have ranking indicators, but it’s hard for a search system to know how to compare the different indicators when blending results together.
* We’ll be able to add more ranking indicators to the index that we build than we can offer in the i14y drawer indexes built by agencies via API.
* If an agency is able to send 100% of the content they want searched, with full text, to a single i14y drawer, then their relevance ranking would be easy to determine. While most agencies can’t do this, we will continue to support i14y for the agencies that have already launched with it.

### 4. XML sitemaps are great - really helpful for search engines and pretty easy for agencies to implement

* An XML sitemap is a machine-friendly list of the contents of a website. While no one can know for sure, the consensus in the SEO industry is that Google and Bing use XML sitemaps as part of their monitoring sites for new or updated content. Making it easy for them to find your content is thought to give a [ranking boost to your site’s content](https://searchengineland.com/guide/seo/site-architecture-search-engine-ranking) {% external_link %}.
* Most content management systems have plugins that will generate an xml sitemap for the content in the CMS. Static content can either be added to the CMS-generated sitemap, or listed in a separate sitemap file.
* We feel it’s a better use of time for agency teams to work on implementing good sitemaps that will help them out in Google and Bing, as well as with the Search.gov system, than to invest a lot of time in an integration that only works with us.

## So where are we now?

We built the new index model and released that in December 2017, along with our core indexing job that grabs data from pages - html, pdf, and the other major file types.

We added a crawler in January 2018, to facilitate URL discovery on a given website.

We added the ability to index content from XML sitemaps in February. We follow the [sitemaps protocol](https://www.sitemaps.org/protocol.html) {% external_link %}, which relies in part on also having  and have posted a explainer pages about [XML sitemaps](/blog/sitemaps.html) and [robots.txt files](/blog/robotstxt.html) to get you the most essential information.

We removed our connection to the Google Site Search API in March, and are now serving results from our own index for those cases where we had previously used Google. 

We started with a small representative set of sites, and have moved into working on our highest traffic customers. Over 90 search sites now bear the `Powered by Search.gov` mark on their search results pages, including [SSA.gov](https://search.ssa.gov/search?utf8=%E2%9C%93&affiliate=ssa&sort_by=&query=replacement+card), [TSA.gov](https://search.usa.gov/search?utf8=%E2%9C%93&affiliate=tsa.gov&sort_by=&query=screening), [Medicare.gov](https://search.medicare.gov/search?utf8=%E2%9C%93&affiliate=medicaregov&sort_by=&query=medical+equipment), and many more. 

## Where to next?

Unlike with the Google API sunset, there is no hard deadline for our moving sites off Bing and into our own index. Our timelines around Bing are driving toward having well over half of our search traffic going to our own indexes this fiscal year. We’ll continue to work on high traffic sites, large Department website searches, and the many agency component websites that combine to create the parent website’s search.

If your search site is low traffic and you haven’t heard from us yet, you can expect to remain on Bing for the foreseeable future. We will reach out as the time draws near.

In the meantime, we encourage *all* sites to invest some time in developing and maintaining a good XML sitemap. As mentioned above, this will help us maintain a good index of your content, and it will also give you a Google boost, so it’s really win-win. Part of having a good sitemap is having a good robots.txt file as well. Read over our new explainer posts and reach out with any questions.

[Learn more about XML sitemaps](/blog/sitemaps.html)

[Learn more about robots.txt files](/blog/robotstxt.html)
