---
layout: post
title: How to Create Collections Within Our Index
category: manual
tags: how-to manage-content collections
---
[DigitalGov Search](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Collections

Would you like searchers to be able to narrow results to a specific subset of content within your site or on another site? You can create a collection across any set of domains, subdomains, or subfolders.

## Step 1. Create a Collection

Enter a name for the collection (such as FAQs, Archive, or News).

Enter the URLs for the domains, subdomains, or subfolders that make up this collection. Start each URL prefix with http:// and end it in a trailing slash () to avoid unintended matches (e.g., http://publications.agency.gov/docs/ and http://answers.agency.gov).

You cannot specify URLs for individual web pages. 

## Step 2. Opt to Show in Sidebar

Click on the [Display Overview](/manual/display-overview.html) page. Turn on your collection to allow searchers to see it as a navigation option above the search box on the results page.

## Step 3. Check Your Search Results Page

Searchers will see an option to narrow their search results to pages in this collection above the search box on the results page.

![Collection on the search results page](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/manual-collection-2.png)

---

***Did you know?*** You can set up a search box on your website that limits results to your collection.

1. Start with the standard form snippet on the [Code Snippets](/manual/code.html) page under the Activate Search tab. 
1. Change the form action from `action="http://search.usa.gov/search/"` to `action="http://search.usa.gov/search/docs"`.
1. Add the following line to limit the results to your collection: `<input type="hidden" name="dc" value="###">`.

The value is the number for your collection ID, which is visible in the URL when you edit your collection in the Admin Center.

See the sample search box below that is limited to news on [NIH.gov for a search on *autism*](http://search.nih.gov/search/docs?affiliate=nih&dc=565&query=autism).

[![News-only search box on NIH.gov's News Releases page](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/manual-collection-3.png "News-only search box on NIH.gov's News Releases page")](http://www.nih.gov/news/releases.htm)
  
[![NIH.gov news-only search results page](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/manual-collection-4.png "NIH.gov news-only search results page")](http://search.nih.gov/search/docs?affiliate=nih&dc=565&query=autism)
