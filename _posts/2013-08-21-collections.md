---
permalink: /sites/manual/collections.html
layout: post
title: "How to Create Collections Within Our Index"
tags: how-to manage-content collections
---
[USASearch](http://usasearch.howto.gov) > [Admin Center](https://search.usa.gov/sites) > YourSite > Collections

Would you like searchers to be able to narrow results to a specific subset of content within your site or on another site? You can create a collection across any set of domains, subdomains, or subfolders.

## Step 1. Create a Collection

Enter a name for the collection (e.g., FAQs).

Enter the URLs that make up this collection. Start each URL prefix with http:// and end it in a trailing slash () to avoid unintended matches (e.g., http://publications.agency.gov/docs/ and http://answers.agency.gov).

<!-- START UPDATE -->

## Step 2. Opt to Show in Sidebar

Click on the [Display Overview](/sites/manual/display-overview.html) page. Check the option, Show in Sidebar, to allow searchers to see navigation options in the left-hand column of the results page.

<!-- END UPDATE -->

## Step 3. Check Your Search Results Page

Searchers will see an option to narrow their search results to pages in this collection in the left-hand navigation on the results page.

![Collection on the search results page](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/manual-collection-2.png)

---

***Did you know?*** You can click on the 'Preview' option to see the content we have indexed for each of your collections.

***Did you know?*** You can set up a search box on your website that limits results to your collection.

Start with the standard form snippet on the [Activate Search](/sites/manual/activate.html) page. Change the form action to `action="http://search.usa.gov/search/docs` and add the following line to limit the results to your collection.

`<input type="hidden" name="dc" value="###">`

The value is the number for your collection ID, which is visible in the URL when you edit your collection in the Admin Center.

See the sample search box below that is limited to news releases in [FTC.gov's Newroom](http://www.ftc.gov/opa/index.shtml) for a search on *privacy*.

![FTC.gov Newsroom search box](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/manual-collection-3.png)  
*Newsroom page with a search box that is limited to news*

![FTC.gov search results page](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/manual-collection-4.png)  
*Search results page that returns news results only*
