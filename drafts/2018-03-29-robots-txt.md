---
layout: post
title: Robots.txt
category: manual
tags: how-to manage-content

# Remove the following two lines when publishing, so the page
# can be included in the sitemap and indexed by search engines
sitemap: false
metatags: noindex
---

A [robots.txt](http://www.robotstxt.org/robotstxt.html) {% external_link %} file is a text file created by webmasters to instruct automated web bots on how to crawl and/or index a website. They are used to provide information about what site directories should or should not be crawled. 

##What should my robots.txt file look like?
Please refer to the [robots.txt page](http://www.robotstxt.org/robotstxt.html) {% external_link %} for information on how and where to create your robots.txt.

##How can I optimize my robots.txt for Search.gov?
A robots.txt may specify a "crawl delay" directive for one or more user agents, which tells a crawler how quickly it can request pages from a website. For example, a crawl delay of 10 specifies that a crawler should not request a new page more than every 10 seconds.  We recommend a crawl-delay between 1-10 seconds for the `usasearch` user agent. The lower the crawl delay, the faster Search.gov will be able to crawl and index your site. For example:

```
User-agent: usasearch  
Crawl-delay: 2
```

Your robots.txt file should also list one or more of your [XML sitemaps](https://search.gov/blog/sitemaps.html). For example:

```
Sitemap: https://search.gov/sitemap.xml
```

We also recommend disallowing any directories that include content that should not be indexed by search engines. For example, 

##Robots.txt checklist
<i class="icon-check" ></i> 1. A robots.txt file has been created in the site's root directory (`https://myagency.gov/robots.txt`)  
<i class="icon-check"></i> 2. The robots.txt file disallows any directories and files that automated bots should not crawl  
<i class="icon-check"></i> 3. The robots.txt file lists one or more [XML sitemaps](https://search.gov/blog/sitemaps.html)  
<i class="icon-check"></i> 4. The robots.txt file format has been [validated](http://tools.seochat.com/tools/robots-txt-validator/) {% external_link %}

##Additional Resources
[Yoast SEO's Ultimate Guide to Robots.txt](https://yoast.com/ultimate-guide-robots-txt/) {% external_link %}  
[Google's "Learn about robots.txt files"](https://support.google.com/webmasters/answer/6062608?hl=en&ref_topic=6061961) {% external_link %}  


