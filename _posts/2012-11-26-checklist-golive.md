---
permalink: /blog/go-live.html
layout: post
title: "A Punch List to Go Live with USASearch"
tags: how-to
---
Your pre-launch checklist will be unique to your agency's workflow, requirements, and deadlines. A typical punch list to go live with USASearch follows.
## Connect Your Site to USASearch

Most agencies add these two [snippets of code](/manual/get-code.html) to the template(s) in their content management systems (rather than adding them to individual pages).

<i class="icon-check"></i> **1. Does your search box point to USASearch?** Update your search box form code point to USASearch so that, when users execute a search, they'll see your USASearch-hosted results page.

	<form accept-charset="UTF-8" action="http://search.usa.gov/search" id="search_form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
		 <input id="affiliate" name="affiliate" type="hidden" value="YourSiteHandle" /> 
	 	<label for="query">Enter Search Term(s):</label> 
	 	<input autocomplete="off" class="usagov-search-autocomplete" id="query" name="query" type="text" /> 
	 	<input name="commit" type="submit" value="Search" /> 
	</form>

<i class="icon-check"></i> **2. Do you have the USASearch Javascript tag on your webpages?** This Javascript helps us [find your new and updated pages](/manual/urls.html). It also powers the [type-ahead search](/manual/type-ahead.html).

	<script type="text/javascript">
	//<![CDATA[
		 var usasearch_config = { siteHandle:"YourSiteHandle" };
	 	var script = document.createElement("script");
	 	script.type = "text/javascript";
	 	script.src = "http://search.usa.gov/javascripts/remote.loader.js";
	 	document.getElementsByTagName("head")[0].appendChild(script);
	//]]>
	</script>

## Double Check Your Content Sources

<i class="icon-check"></i> **3. Have you told us which domain(s) you want to search?** List one or more [domains](/manual/domains.html) that you want to search on the first page of web results. Most agencies opt to leave out the 'www' to include all subdomains (e.g., list usa.gov to include answers.usa.gov, blog.usa.gov, publications.usa.gov, etc). Some agencies especially department-level portals opt to also include their bureaus' websites (e.g., Commerce.gov includes commerce.gov, noaa.gov, trade.gov, etc.)

<i class="icon-check"></i> **4. Have you told us about your RSS feeds?** We love [RSS feeds](/manual/rss.html). Tell us about all of your feeds, even if you opt not to show them (see #7 below). They're the quickest way for you to tell us about your new and updated content. Feeds also have well-structured titles, URLs, descriptions, and dates that we use to improve your search results page. (Tip: Preview your feeds from the RSS page in the [Admin Center](http://search.usa.gov/affiliates/home) to confirm that we've indexed your content.)

<i class="icon-check"></i> **5. Have you told us about your social media accounts?** Flickr photostreams, tweets, and YouTube videos are a great way to highlight your recent content and to let searchers know about your [social media](/manual/social-media.html) channels. Tell us about all of your social media, even if you opt not to show them (see #7 below). 

## Customize Your User Interface

<i class="icon-check"></i> **6. Have you made the search results page look like your website?** Customize the [look and feel](/manual/look-feel-page.html) (colors, fonts, favicon) and [header and footer](/manual/header-footer.html) of your search results page to create a seamless experience for users as they search and browse your website.

<i class="icon-check"></i> **7. Have you told us what to show on your results page?** Tell us which [results modules](/manual/results-modules.html) (i.e., the stuff in the center of the page) and [sidebar](/manual/sidebar.html) options (i.e., the navigation in the left-hand column) you want to appear on your search results.

## Set Up Nice-to-Have Features (Optional)

<i class="icon-check"></i> **8. Have you masked your domain?** We offer [DNS masking](/manual/get-code.html#cname), which allows you to show searchers your search.YOURSITE.gov (instead of search.USA.gov). If you leverage DNS masking you will have to change your search box form action from search.usa.gov to search.YOURSITE.gov. 

<i class="icon-check"></i> **9. Have you added the Javascripts for your other third party web services to your results page?** If you have a [third party service](/manual/third-party.html) running on your website, you likely want it to run on your results page. Agencies often include their 4Q, AddThis, Foresee, Google Analytics, Omniture, or WebTrends code, among others.

## Don't Forget SEO (Optional)

<i class="icon-check"></i> **10. Have you optimized your site so we can find your content?** We follow [search engine optimization](http://www.howto.gov/web-content/search/seo) (SEO) best practices. Verify that you have a [robots.txt](http://www.robotstxt.org) and an [XML sitemap](http://www.sitemaps.org). These two files are typically located in the root directory of your website (i.e., agency.gov/robots.txt and agency.gov/sitemap.xml, respectively). Also verify that your robots.txt file allows our user agent (usasearch) to access your public content.

<i class="icon-check"></i> **11. Have you registered your site with the major commercial search engines?** Register for both [Bing Webmaster Tools](http://www.bing.com/toolbox/webmaster) and [Google Webmaster Tools](https://www.google.com/webmasters/tools/home) to maximize the coverage of your content in their search results.