---
layout: post
title: "DigitalGov Search for Power Users: Recap"
category: blog
tags: help-manual training
---

Our April 2015 training session looked into the nooks and crannies of the [Admin Center](https://search.usa.gov/sites/), and provided other advanced tips for optimizing your search. We used the scenario of a site redesign to ground these tips in a common experience. This is a summary and cheat sheet. Since we know that some of these tips won’t be relevant until they’re relevant, please hang on to this for future reference.

Watch the [recorded session](https://www.youtube.com/watch?v=Z1Eg9LhhFcY) on YouTube.

The launch of a new or redesigned site is a great time to think about refreshing your search as well. Come along on a journey through a search refresh before, during, and just after your new site goes live. You need not wait for a new site, though - these steps can be taken at any time.

* [Tell search engines to (re-)index your site](#commercial)
* [Let us index your site directly](#direct)
* [Update your search settings in the Admin Center](#ac)
* [Break Glass In Case of Emergency](#emergency)
* [Get Fancy](#fancy)

<a name="commercial"></a> 
## Tell Search Engines to (Re-)Index Your Site

DigitalGov Search does not crawl. Crawling is hard and expensive, and others have systems in place that do this very well, so we rely on commercial search engines’ indexes of your site. Search engines create **indexes** of the websites they crawl, and search queries are run against those indexes. If a website is restructured but the search indexes are not updated, the old structure will be presented in search results.

* **Robots.txt** files declare what can and cannot be indexed by crawlers. Tip: Set up a robots.txt file on your *beta* site to *disallow* indexing. When you switch your beta site to **production**, update the robots.txt to **allow** indexing. [Resources and Examples](https://www.google.com/search?q=robots.txt+example){% external_link %} 
  * Put your file at the root of your site, `http://www.YOURSITE.gov/robots.txt`.
  * If you didn’t disallow indexing of your beta site and it has already been indexed, request it be removed via Google and Bing’s webmaster tools sites. A robots.txt file won’t proactively *remove* content from search engines’ indexes. 
* **301 redirects** allow crawlers to find their way around your new structure, and expedite the reindexing process. A 404 page is a dead end, and the new location or version of that file can’t be found from there. 
  * If the volume of 301s to place is daunting, consider setting a general 301 for all the content in a location pointing to the new index page for that type of content. You can also prioritize your 301 placement based on your site usage analytics, starting with the most popular pages.
  * If you’re not sure which of your pages are throwing 404s, you can run your list of URLs through an [online http status checker](https://duckduckgo.com/?q=http+status+checker){% external_link %}, or you could install SEO auditing software on your computer, if your IT policies allow it.
* **XML sitemaps** tell crawlers how often to reindex your site, or portions of your site. The protocol and examples are available at [Sitemaps.org(http://www.sitemaps.org/protocol.html){% external_link %}. The crucial element is to set the `<changefreq>` tag to the appropriate frequency for your content. You can set the frequency at the site, folder, or even individual item level.
  * Put your file at the root of your site, `http://www.YOURSITE.gov/sitemap.xml`.
* See also our [tips on preparing for a site redesign](https://search.gov/manual/redesign.html).

<a name="direct"></a> 
## And, Tell Us about Your Content and We’ll Index It Directly

While we don’t crawl, we will index any pages you tell us about. The steps mentioned above will be useful for searchers out on the web looking for your information and services. By default we leverage the commercial indexes for your site search, but we have our own indexes as well.  If you’re having a hard time getting search engines to index your new site, re-index your old site, or you just prefer our indexes, there are a couple of ways you can tell us about your content.

* You can [**send us all of your content** via RSS](https://search.gov/manual/rss.html) for direct indexing. We’ll need the URL, title, description, update date, and the full content or body of each item. Sort by update date in descending order. This can be an RSS or Atom feed. [Let us know](mailto:search@support.digitalgov.gov) you created this feed. There are a few different options for indexing feeds so we’ll make sure it’s set up in the best way possible.
* Better yet, **publish your content via API**. We are in the beginning stages of development for a bootstrap API and a CRUD API. If you’d like to be part of our beta testing group and give feedback on the product, [let us know](mailto:search@support.digitalgov.gov). We want to get people kicking the tires on the prototype early, in the coming weeks. (note, this is current as of April 2015)

<a name="ac"></a>
## Update Your Search Settings in the Admin Center

Don’t forget to update your content settings in the Admin Center to point to your new content. This is an important, but often overlooked step.

* Set up your domains list to **include entire domains**. Example: nih.gov - not www.nih.gov. Specifying www will limit your search to that particular subdomain. If you do specify a subdomain, do so with the intent to limit your search. [Search.gov Home](/index.html) > [Admin Center](https://search.usa.gov/sites/) > `YourSite` > `Content` > `Domains`
* If a particular **new item** is not showing up in search results and you need it there ASAP, you can create a Best Bet pointing to it, or add it as a Supplemental URL.
  * **Best Bets** can be managed at [Search.gov Home](https://search.gov) > [Admin Center](https://search.usa.gov/sites/) > `YourSite` > `Content` > `Best Bets: Text or Best Bets: Graphics` *(Recommended)*
  * **Supplemental URLs** can be added at [Search.gov Home](https://search.gov) > [Admin Center](https://search.usa.gov/sites/) > `YourSite` > `Content` > `Domains` > `Advanced` > `Supplemental URLs`
* When undergoing a [site redesign](https://search.gov/manual/redesign.html), be sure to **update** Collections, Best Bets, RSS Feeds, Header and Footer links, related sites, image assets, and results page colors, as appropriate. 
* If you set up a **test search site** to go with your beta site, we recommend you **transfer** all the new settings over to your old site when you take your beta site into production, in order to maintain continuity of analytics. The test search site will have separate analytics from your existing, live search. If you would like help transferring your settings, [let us know](mailto:search@support.digitalgov.gov).

<a name="emergency"></a>
## Break Glass In Case of Emergency

We have a stopgap measure available to [filter certain results](https://search.gov/manual/domains-advanced.html) directly in the Admin Center. Under `[Search.gov Home](https://search.gov) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Analytics > Queries` you’ll see an option for Filter URLs. 

**Important Note!** This is meant to be a **stopgap measure** until search engines’ indexes have caught up. After they’re updated there, the urls you’ve filtered here **should be removed**. They are appended to your query and are counted against the byte limit we can include in any one query. Please don’t forget to remove them after you no longer need them.

<a name="fancy"></a>
## Get Fancy

At any time, you can use some of our more advanced options to get the most out of your search. Don’t wait for a redesign to take advantage of these features.

* **3rd party tracking** allows you to include search traffic in your broader website and customer experience monitoring, such as Google Analytics and Foresee.
  * If you are sending **more than one code**, or an additional code, for a given tracking service, please either send both together in the same submission, or include a note with your second code snippet that it should be appended to what you had submitted before.
  * **ForeSee** requires you set up a [cname](https://search.gov/manual/cname.html) in order for it to work (see below). 
  * You can also put in any other analytics or customer satisfaction tools you use. 
  * The [Digital Analytics Program](http://www.digitalgov.gov/services/dap/) is already integrated with DigitalGov Search, so you don’t need to do anything.
* **Domain Masking** is available for your hosted search results page. Create a **CNAME** record in your external DNS records. Example: `NAME: search.YOURSITE.gov` ; `CNAME: search.usa.gov.edgekey.net`. Other subdomain options are ‘find’ and ‘findit.’ **Alert us in writing** of your choice and we’ll get our side set up. When both sides are ready, **update the form code** on your search box to point to `search.YOURSITE.gov`.
* **Search box setup**. You can get fancy with your search box, pointing it to a particular collection, or adding options for people to set their search scope.
  * Start your **search in a collection**: add `<input type="hidden" name="dc" value="INSERT_COLLECTION_ID_#" />` to your form code. The collection ID can be found in the URL of the collection’s edit screen.
  * Create an **isolated search** experience by searching a hidden collection: add `<input type="hidden" name="dc" value="INSERT_COLLECTION_ID_#" />`, as above, but make sure the collection display is set to OFF.
  * Provide **options** that allow the user to set their search scope from the get-go. For example, [Lawrence, Kansas](http://lawrenceks.org/) has developed a nice modern approach to radio buttons. 
  * Pass a **site limit parameter** from your search box: add `<input type="hidden" name="sitelimit" id="sitelimit" value="www.agency.gov/limittothisfolder">` to your form code.
* The **API key** for displaying search results on your own site is available under [Search.gov Home](https://search.gov) > [Admin Center](https://search.usa.gov/sites/) > `YourSite` > `Activate` > `API Access Key`. We recommend you **use the hosted results page** whenever possible, to take advantage of all of the features of our service.
