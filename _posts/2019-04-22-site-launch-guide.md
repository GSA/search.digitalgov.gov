---
layout: post
title: Search Site Launch Guide
crumbname: Site Launch Guide
category: manual
tags: go-live site-launch indexing
breadcrumbs:
  - label: Home
    url: https://search.gov/
  - label: Help Manual
    url: https://search.gov/manual/
---

At Search.gov we aim to provide a self-service, plug and play search solution. This guide will walk you through everything you need to do, and let you know when to reach out to us. The basic steps are:

1. [Add a site](#add-site)
1. [Add Domains](#add-domains)
1. [We will select the search index your site will use](#select-index)
1. [Add additional search features](#add-features)
1. [Turn on the search features](#turn-features-on)
1. [Configure the branding of your results page](#configure-branding)
1. [Connect your website’s search box to your search site](#go-live)

<img class="img-responsive"
        src="/files/site-launch-workflow.png"
        alt="Flow chart showing the steps involved in launching a search site on Search.gov">
<a href="https://search.gov/manual/site-launch-flow.html#description">Site launch flow chart detailed description</a><br />
<a href="https://search.gov/files/site-launch-workflow.png">Open large version</a>

<a name="description"></a>

<a name="add-site"></a>

## 1. Add Site

**Who:**  You, the agency web team

**What:** After you’ve successfully opened an account with Search.gov, you'll need to create a search site. A search site is where you configure the search experience for your website. Find the `Add Site` link at the top of the Admin Center, and enter some basic details about your site. Please note that our service is for publicly accessible, federal government content. More detailed information can be found on our [Add Site help page](https://search.gov/manual/add-site.html). 

Once you've created your site, note the actions available on the left-hand navigation of your Admin Center. 

<i class="icon-dashboard"></i> The **Dashboard** is where you can view a Site Overview, manage users, update your site’s homepage, or site display name. 

<i class="icon-bar-chart"></i> **Analytics** are provided for the past 13 months, reporting your top queries, clicks, and referrers (the pages people were on when they ran their searches), and monthly rollup data.

<i class="icon-file"></i> **Content** management is where you define what your search experience will include, both the default search scope, additional content sources, and alternative search views.

<i class="icon-desktop"></i> **Display** management is where you can configure the branding of your search results page.

<i class="icon-eye-open"></i> **Preview** your search results page to see what your search experience will be like, before you go live.

<i class="icon-code"></i> And finally, the **Activate** section provides pre-formatted code snippets to help you go live. Don’t be afraid of entering this area, nothing will actually be activated.

<a name="add-domains"></a>
<br />
## 2. Add Domains

**Who:** You, the agency web team

**What:** In the content management section, the domains list defines the default search scope for your site. You can include one domain or several, or you can focus on particular subdomains of one domain. [Read more here](https://search.gov/manual/domains.html).

<a name="select-index"></a>
<br />
## 3. Web Index Selection

**Who:** Search.gov team, in consultation with you, the agency web team

**What:** By default a new search site will be connected to the Bing web index to receive web results. Websites with very low levels of search traffic can continue to use the Bing web index after they launched our service. However, sites that will see greater than 150,000 queries per year will need to be indexed directly by our service before going live.  We monitor new sites established in our system, and will reach out if we think your site will need to be indexed by us, or if we need more information to make a determination.

Regardless of the index used to support your search, we can only serve publicly accessible content. You will not be able to use our service for secure content, including intranets, and we can never index or serve personally identifiable information (PII) or other confidential data.

(<a href="#add-features">Jump to Step 4. Add Features</a> if you don't need the details of the indexing process at this time.)

If we will be indexing your content ourselves, we will follow these steps:
<a name="indexing-workflow"></a>

<br /><br />
###  Indexing with Search.gov
<br /><br />
####  A. Define Domains and Subdomains

**Who:** You, the agency web team, in consultation with the Search.gov team

**What:** The Admin Center Domains list controls what we pull out of our index for a search on your site. But we also need to know what to put in to the index to begin with. We’ll work with you to confirm the domains and subdomains you want discoverable through search. For example, after discussing with you, we may plan to index all of your subdomains, or just a selection of the major sections:

```
www.example.gov
data.example.gov
archive.example.gov
www.subagencydomainexample.gov 
```
<br /><br />
####  B. Sitemap for Each Subdomain

**Who:** You, the agency web team, in consultation with the Search.gov team

**What:** The easiest way for us to discover what URLs exist on your domain is via an XML sitemap. Each domain identified above will need a separate sitemap. Please read our [detailed discussion of XML sitemaps](https://search.gov/blog/sitemaps.html), and let us know if you have any questions. We understand it can be difficult for some legacy systems to generate a sitemaps, so if this is the case, [please reach out](mailto:search@support.digitalgov.gov).

We do not crawl websites by default due to the high resource demand of crawling every page on every website all the time. One of the goals of our service is to contain the costs of search government-wide, and a crawling-first model would increase costs significantly.

If you publish your site on Federalist, read these [additional instructions](https://search.gov/manual/searchgov-for-federalist.html).
<br /><br />
####  C. Index Subdomains

**Who:** The Search.gov team

**What:** Once sitemaps are posted to your website, our system will index your content. Alert us when the sitemaps are posted, and we’ll add your domains to our list of domains that we monitor. Then, indexing will begin.

By default, we make 1 request per second to a domain. If a `Crawl-delay` is declared in your [/robots.txt file](https://search.gov/blog/robotstxt.html), we will honor that delay while fetching your content for indexing. The length of time required to index a site is `(number of items) x (crawl delay) / 3600 = hours to index`.

If you use a firewall service, it’s possible our indexer will be blocked. We can provide our IP addresses for you to whitelist in your firewall. 

Please note, we can only index domains that are publicly accessible. This means that if you have a password-protected staging environment, we will not be able to index it for you as part of your testing process. [Please reach out](mailto:search@support.digitalgov.gov) and we can discuss options if you need to test our service pre-production.
<br /><br />
####  D. Test Index

**Who:** Search.gov Team

**What:** For search sites switching from Bing: After your content is indexed, we’ll start up a parallel search site using your current site configuration and the new index, and run a number of test queries to ensure the index is performing satisfactorily. Our test will cover your live site’s most popular queries. 
<br /><br />
####  E. Review Index

**Who:** You, the agency web team

**What:** For sites switching from Bing: After we’re satisfied with the index, we’ll send you a link to the test search site, so you can review and provide feedback.

For brand new sites: You will be able to test the index using your regular search site(s).
<br /><br />
####  F. Ready to Launch

**Who:** You, the agency web team, in collaboration with Search.gov

**What:**  For brand new sites: Your index is ready to go, you can proceed with the rest of the site launch steps and go live without any further action from our team.

For sites switching from Bing: When you give us the green light to switch to the new index, there is no action needed on your part other than the approval. We will change a setting in our back end, which will point your existing search site’s web results module to our index, and the change is effective immediately. All other elements of your search site remain the same: search features, branding, etc.

<a name="add-features"></a>
<br /><br />
## 4. Add Search Features

**Who:** You, the agency web team

**What:** We offer several additional search features you can configure to enhance your search experience.

* [Collections](https://search.gov/manual/collections.html) allow you to set up alternative search scopes from the Domains you declare for the main search. Often Collections point at particular subfolders or subdomains of the primary domain for the site. Sometimes they point at a different domain entirely. If you are indexed by Searhc.gov and you want a Collection to search another domain, check with us to see if we have that content already indexed.  
* [Best Bets](https://search.gov/manual/best-bets.html) work like ads in Google, and allow you to pin certain results to the top of your search results. Use Text Best Bets to boost individual items, and Graphics Best Bets to boost a set of related items, such as a form, its instructions page, and other related material.
* [Routed queries](https://search.gov/manual/routed-queries.html) allow you to bypass the results page entirely for a given query, where you know exactly the page you want a person to get to after running that query. This is helpful for always getting people to the landing page for a process, rather than their clicking to a mid-process page from a search results page.
* [RSS](https://search.gov/manual/rss.html) feeds can be indexed and searched either as separate tabs on the search results, or as an inline module promoting your latest content alongside your web results.
* [YouTube](https://search.gov/manual/youtube.html) videos can also be searched
* [Twitter](https://search.gov/manual/twitter.html)    
* [Flickr](https://search.gov/manual/flickr.html)   
* [Jobs](https://search.gov/manual/govbox-jobs.html) are one of the most frequently searched topics on agency websites. Use our jobs module to show your agency’s postings from USAJOBS in your own website’s search results.
* [_Federal Register_](https://search.gov/manual/govbox-federal-register.html) rules and notices can be added to your search results in a separate module. 

<a name="turn-features-on"></a>
<br />
## 5. Toggle Search Features On

**Who:** You, the agency web team

**What:** In order to display any of the search features you just added above, you’ll need to toggle ON the display for each one, using the [Display Overview page](https://search.gov/manual/display-overview.html). If you want to show Jobs or _Federal Register_ results and you don’t see those options on the Display Overview page, [let us know](mailto:search@support.digitalgov.gov) and we can connect your search site to those features.

<a name="configure-branding"></a>
<br />
## 6. Configure Results Page

**Who:** You, the agency web team

**What:** To make the results page complement your website’s look and feel, upload your logo, set the font style, and customize the page colors to ensure a more seamless experience for your searchers as they move from your site to ours, and back again. You can also add header and footer links to support navigation back to your website. [See more details here](https://search.gov/manual/brand.html). 

[Masking the domain for your results page](https://search.gov/manual/cname.html) is another way you can provide continuity to your searchers as they move back and forth between your site and our system.

<a name="go-live"></a>
<br />
## 7. Connect Your Search Box to Search.gov

**Who:** You, the agency web team, in collaboration with your deploy team, if different

**What:** Once you’re ready to go live with your search site, take a look at the [Go-Live Checklist](https://search.gov/manual/go-live.html) to make sure you've covered all your bases. Then you will need to modify the form code for the search box on your website. We provide simple pre-formatted code in the Admin Center, or you can include these same parameters in another style of search box. [Read more and see required parameters here](https://search.gov/manual/code.html). 

If you publish your site on Federalist, read these [alternative instructions](https://search.gov/manual/searchgov-for-federalist.html).

You’re now live with Search.gov!
