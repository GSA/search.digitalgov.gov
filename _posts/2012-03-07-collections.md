---
permalink: /manual/collections.html
layout: post
title: "How to Create Collections Within Our Index"
tags: how-to collections
---
[USASearch](http://usasearch.howto.gov) > [Admin Center](http://search.usa.gov/affiliates/home) > YourSite > Collections

Would you like searchers to be able to narrow results to a specific subset of content within your site or on another site?

## Step 1. Create a Collection

Create a named collection across any set of domains, subdomains, or subfolders.

Enter a name for the collection (e.g., FAQs).

Enter the URLs that make up this collection. Start each URL prefix with http:// and end it in a trailing slash (/) to avoid unintended matches (e.g., http://publications.agency.gov/docs/ and http://answers.agency.gov/).

![Create a Collection](http://f22818b4dfc10241d8a3-f1564c64756a8cfee25b6b19953b1d23.r31.cf2.rackcdn.com/tumblr_m0j67qCpD31qid15q.png)

## Step 2. Opt to Show in Sidebar

Click on the [Sidebar](/manual/sidebar.html) option in the left-hand menu. Check the option, Show in Sidebar, to allow searchers to see navigation options in the left-hand column of the results page.

## Step 3. Check Your Search Results Page

Searchers will see an option to narrow their search results to pages in this collection in the left-hand navigation on the results page.

![Collection on the search results page](http://f22818b4dfc10241d8a3-f1564c64756a8cfee25b6b19953b1d23.r31.cf2.rackcdn.com/tumblr_m0j6jwQoHO1qid15q.png)

---

***Did you know?*** You can set up a search box on your website that limits results to your collection.

Start with the standard form snippet on the [Get Code](/manual/get-code.html) page in the Admin Center. Change the form action to `action="http://search.usa.gov/search/docs` and add the following line to limit the results to your collection.

`<input type="hidden" name="dc" value="###">`

The value is the number for your collection ID, which is visible in the URL when you edit your collection in the Admin Center.

See the sample search box below that is limited to news releases in [FTC.gov's Newroom](http://www.ftc.gov/opa/index.shtml) for a search on *privacy*.

![FTC.gov Newsroom search box](http://f22818b4dfc10241d8a3-f1564c64756a8cfee25b6b19953b1d23.r31.cf2.rackcdn.com/tumblr_mezhnwedQK1qid15q.png)  
*Newsroom page with a search box that is limited to news*

![FTC.gov search results page](http://f22818b4dfc10241d8a3-f1564c64756a8cfee25b6b19953b1d23.r31.cf2.rackcdn.com/tumblr_mezhr7VJZU1qid15q.png)  
*Search results page that returns news results only*