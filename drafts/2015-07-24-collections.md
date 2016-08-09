---
layout: post
title: How to Create Collections Within Our Index
category: manual
tags: help-manual manage-content collections
---
[DigitalGov Search](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Collections

Would you like searchers to be able to change where they are searching, either to a particular place within your site, or to another site? You can create a collection that will search in any set of domains, subdomains, or subfolders.

## Step 1. Create a Collection

Enter a name for the collection (such as FAQs, Archive, or News).

Enter the domains, subdomains, or subfolders that you want this collection to search in. Start each URL prefix with http:// and end it in a trailing slash `/` to avoid unintended matches (e.g., http://publications.agency.gov/docs/ and http://answers.agency.gov).

You cannot specify URLs for individual web pages. 

*Tip*: Be sure to include the folder(s) where the files you want to search are stored, not just the folder where the index page that references the files is stored. For example:

* **No:** http://www.YOURSITE.gov/**publications/annual_reports**/index.html (with links to files such as http://www.YOURSITE.gov/**files/annual_reports**/2015final.pdf) 
* **Yes!:** `http://www.YOURSITE.gov/files/annual_reports/`

## Step 2. Opt to Show as a Facet

Click on the [Display Overview](/manual/display-overview.html) page. Turn on your collection to allow searchers to see it as a search facet in the navigation bar above the search box on the results page in the desktop view, or in the search menu on smaller screens.

## Step 3. Check Your Search Results Page

Searchers will see the collection name as an option to focus their search on that area.

![Collection on the search results page](https://d3qcdigd1fhos0.cloudfront.net/blog/img/manual-collection-2.png)

---

***Did you know?*** You can set up a search box on your website that limits results to your collection.

1. Start with the standard form snippet on the [Code Snippets](/manual/code.html) page under the Activate Search tab. 
1. Change the form action from `action="http://search.usa.gov/search/"` to `action="http://search.usa.gov/search/docs"`.
1. Add the following line to limit the results to your collection: `<input type="hidden" name="dc" value="###">`.

The value is the number for your collection ID, which is visible in the URL when you edit your collection in the Admin Center.

See the sample search box below that is limited to news on [NIH.gov for a search on *autism*](http://search.nih.gov/search/docs?affiliate=nih&dc=565&query=autism).

[![News-only search box on NIH.gov's News Releases page](https://d3qcdigd1fhos0.cloudfront.net/blog/img/manual-collection-3.png "News-only search box on NIH.gov's News Releases page")](http://www.nih.gov/news/releases.htm)
  
[![NIH.gov news-only search results page](https://d3qcdigd1fhos0.cloudfront.net/blog/img/manual-collection-4.png "NIH.gov news-only search results page")](http://search.nih.gov/search/docs?affiliate=nih&dc=565&query=autism)

<a name="sitelimit"></a>

***Did you know?*** If you don't want to set up a Collection, you can use the `sitelimit` parameter to search a subset of your content. Compare the collection-based results above with the results for [the same search using the sitelimit parameter](http://search.usa.gov/search?affiliate=nih&query=autism&sitelimit=nih.gov/news).

Note that the searcher sees that results are filtered to nih.gov/news in a message under the search box, among other differences.

Simply add the following line to your form code on your search box to use the `sitelimit` parameter.

`<input type="hidden" name="sitelimit" id="sitelimit" value="http://www.agency.gov/limittothisfolder">` 