---
layout: post
title: How to get search engines to index the right content for better discoverability
crumbname: Better Discoverability
category: manual
redirect_from: "/blog/how-search-engines-index-content-better-discoverability.html"
tags: indexing seo
breadcrumbs:
  - label: Home
    url: https://search.gov/
  - label: Help Manual
    url: https://search.gov/manual/
  - label: Indexing
    url: https://search.gov/manual/indexing-with-searchgov.html
---

Website structure and content can have a significant impact on the ability of search engines to provide a good search experience. As a result, the Search Engine Optimization industry evolved to provide better understanding of these impacts and close critical gaps. Some elements on your website will actively hinder the search experience, and this post will show you how to target valuable content and exclude distractions.

We’ve written a [post about robots.txt files](https://search.gov/manual/robotstxt.html), talking about high level inclusion and exclusion of content from search engines. There are other key tools you will want to employ on your website to further target the content on individual pages:

* [The <main> element](#main-element)
* [Canonical links](#rel-canonical)
* [Robots meta tags](#robots)
* Or a combination of the above: [Sample code structure for dynamic lists and an archived event](#sample)

<br>
<a id="main-element"></a>
## The `<main>` element

### Targeting particular content on a page

A `<main>` element allows you to target content you want indexed by search engines. If a `<main>` element is present, the system will only collect the content inside the element. Be sure that the content you want indexed is inside of this element. If the element is closed too early, important content will not be indexed. Unless the system finds a `<main>` element demarcating where the primary content of the page is to be found, or other semantic section markers, repetitive content such as headers, footers, and sidebars can be picked up by search engines as part of a page’s content. We recommend adding `<main>` and other semantic elements such as `<header>`, `<nav>`, and `<footer>` to demarcate these sections and facilitate clean indexing.

The element is implemented as a stand-alone tag:

```
<body>
Redundant header code and navigation elements, sidebars, etc.
<main>
<h1>This is your page title</h1>
<p>This is the main text of your page
</main>
Redundant footer code
Various scripts, etc.
</body>
```

The element can also take the form of a `<div>` with the role of main, though this approach is now outdated:

```
<body>
Redundant header code and navigation elements, sidebars, etc.
<div role=”main”>
<h1>This is your page title</h1>
<p>This is the main text of your page
</div>
Redundant footer code
Various scripts, etc.
</body>
```

If possible, open the `<main>` tag just ahead of the `<H1>` for your page title. If you use breadcrumbs on your site, `<main>` should be placed in between the breadcrumbs and the `<H1>` so that the repetitive text in the breadcrumb links will not be indexed.

If no `<main>` element is present, we will omit the `<nav>` and `<footer>` elements. If none of these are present, the entire page will be scraped. Full-page scraping performs best for non-HTML file types, including PDFs and DOCs, so we encourage you to implement these semantic elements in your page templates to assist the search engines in understanding the structure of your site.

<br>
<a id="rel-canonical"></a>
## Canonical links
### Declare the 'real' URL for a page

There are two good reasons to declare the URL for a given page: CMS sites can easily become crawler traps, and list views can generate urls that are unhelpful as search results.

A crawler trap occurs when the engine falls into a loop of visiting, opening, and “discovering” pages that seem new, but are modifications on existing URLs. These URLs may have appended parameters such as tags, referring pages, Google Tag Manager tokens, page numbers, etc. Crawler traps tend to occur when your site can generate an infinite number of URLs. The crawler is ultimately unable to determine what constitutes the entirety of a site.
`<link rel="canonical" href="https://www.example.gov/topic1" />`

By using a canonical link, shown above, you tell the crawler this is the real URL for the page despite parameters present in the URL when the page is opened. In the example above, even if a crawler opened the page with a URL like `https://example.gov/topic1?sortby=desc`, only `https://www.example.gov/topic1` will be captured by the search engine.

Another important use-case for canonical links is the dynamic list. If the example above is a dynamic list of pages about Topic 1, it’s likely there will be pagination at the bottom of the page. This pagination dynamically separates items into distinct pages and generates urls like: `https://example.gov/topic1?page=3`. As new items are added to or removed from the list, there’s no guarantee that existing items will remain on a particular page. This behavior may frustrate users when a particular page no longer contains the item they want.

Use a canonical link to limit the search engine to indexing only the first page of the list, which the user can then sort or move through as they choose. The individual items on the list are indexed separately and included in search results.

<br>
<a id="robots"></a>
## Robots meta tags
### Exclude particular pages from indexing, or exclude their links from being followed

There are individual pages on your websites that do not make good search results. This could be archived event pages, list views such as Recent Blog Posts, etc. Blocking individual pages on the [robots.txt file](https://search.gov/manual/robotstxt.html) will be difficult if you don’t have easy access to edit the file Even if edits are easy, it could quickly lead to an unmanageably long `robots.txt`. 

It's also important to note that search engines will pay attention to `Disallow` directives in `robots.txt` when crawling, but may not when accessing your URLs from other sources, like links from other sites or your sitemap. **Search.gov will rely on robots meta tags when working off your sitemap to know what content you want searchable, and what you don't want searchable.**

To achieve best results for blocking indexing of particular pages, you’ll want to employ meta robots tags in the `<head>` of the pages you want to exclude from the search index.

This example says not to index the page, but allows following the links on the page:

`<meta name="robots" content="noindex" />`

This example says to index the page, but not follow any of the links on the page:

`<meta name="robots" content="nofollow" />`

This example tells bots not to index the page, and not to follow any of the links on the page:

`<meta name="robots" content="noindex, nofollow" />`

You can also add an X-Robots-Tag to you HTTP header response to control indexing for a given page. This requires deeper access to servers than our customers usually have themselves, so if you are interested in learning more, you can do so [here](https://developers.google.com/search/reference/robots_meta_tag) {% external_link %}.

If you have content that should be indexed when it’s fresh, but needs to be removed from the index once it’s outdated, you’ll want to take a few actions:

* Once the page’s window of relevance is over, add a `<meta name="robots" content="noindex" />` tag to the `<head>` of the page.
* Make sure the modified_time on the page is updated.
* Leave the item in the [sitemap](https://search.gov/manual/sitemaps.html), so that search engines will see the page was updated, revisit it, and see that the item should be removed from the index.

<br>
<a id="sample"></a>
## Sample code structure

* [Dynamic list 1: Topic landing page](#list1)
* [Dynamic list 2: Posts tagged XYZ page](#list2)
* [Event from last month](#past-event)

<a id="list1"></a>
### Dynamic list 1: Topic landing page

The following code sample is for a dynamically generated list of pages on your site, where you want the landing page for the list to appear in search results.

```
<head>
<title>Unique title of the page</title>
<meta name="description" content="Some multi-sentence description of various things a person will find on this page. This is a great place to use different terms for the same thing, which is hopefully both plain language and keyword stuffing at the same time." />
<meta property="og:title" content="Unique title of the page" />
<meta property="og:description" content="Some multi-sentence description of various things a person will find on this page. This is a great place to use different terms for the same thing, which is hopefully both plain language and keyword stuffing at the same time. This could be the same or slightly different than the regular meta description." />
<meta property=”article:published_time” content=”2018-09-28” />
<meta property=”article:modified_time” content=”2018-09-28” />
<link rel="canonical" href="https://www.example.gov/topic1" />
</head>

<body>
<header>Redundant header code</header>
<nav>Navigation elements, sidebars, breadcrumbs, etc.</nav>
<main>
<h1>Unique title of the page</h1>
<p>This is the introductory text of the page. It tells people what they’ll find here, why the topic is important, etc. This text is within the main element, and so it will be used to retrieve this page in searches.
</main>
Dynamically generated list of relevant pages
Pagination
<footer>Redundant footer code</footer>
Various scripts, etc.
</body>
```

<a id="list2"></a>
### Dynamic list 2: Posts tagged XYZ

The following code sample is for a dynamically generated list of pages on your site, where you do not want the list to appear in search results. In the case of pages tagged with a particular term, the pages themselves would be good search results, but the list of them would be just another click between the user and the content.

Note: the description tags are still present in case someone links to this page in another system and that system wants to display a summary with the link.

```
<head>
<title>Unique title of the page</title>
<meta name="robots" content="noindex" />
<meta name="description" content="Some multi-sentence description of various things a person will find on this page. This is a great place to use different terms for the same thing, which is hopefully both plain language and keyword stuffing at the same time. Recommended max characters is 175." />
<meta property="og:title" content="Unique title of the page" />
<meta property="og:description" content="Some multi-sentence description of various things a person will find on this page. This is a great place to use different terms for the same thing, which is hopefully both plain language and keyword stuffing at the same time. Recommended max characters is 175. This could be the same or slightly different than the regular meta description." />
<meta property=”article:published_time” content=”2018-09-28” />
<meta property=”article:modified_time” content=”2018-09-28” />
<link rel="canonical" href="https://www.example.gov/posts-tagged-xyz" />
</head>

<body>
<header>Redundant header code</header>
<nav>Navigation elements, sidebars, breadcrumbs, etc.</nav>
<main>
<h1>Unique title of the page</h1>
Dynamically generated list of relevant pages
</main>
Pagination
<footer>Redundant footer code</footer>
Various scripts, etc.
</body>
```

<a id="past-event"></a>
### Event from last month

In the following example, an event page was published in June, and then updated the day after the event occurred. This update adds the `meta robots` tag, which declares the page should not be indexed, and links from the page should not be followed in future crawls. Again, the meta descriptions are retained in case of linking from other systems.

```
<head>
<title>Unique title of the page</title>
<meta name="robots" content="noindex, nofollow" />
<meta name="description" content="Some multi-sentence description of various things a person will find on this page. This is a great place to use different terms for the same thing, which is hopefully both plain language and keyword stuffing at the same time. Recommended max characters is 175." />
<meta property="og:title" content="Unique title of the page" />
<meta property="og:description" content="Some multi-sentence description of various things a person will find on this page. This is a great place to use different terms for the same thing, which is hopefully both plain language and keyword stuffing at the same time. Recommended max characters is 175. This could be the same or slightly different than the regular meta description." />
<meta property=”article:published_time” content=”2018-06-04” />
<meta property=”article:modified_time” content=”2018-08-13” />
<link rel="canonical" href="https://www.example.gov/events/august-12-title-of-event" />
</head>

<body>
<header>Redundant header code</header>
<nav>Navigation elements, sidebars, breadcrumbs, etc.</nav>
<main>
<h1>Unique title of the page</h1>
<p>This is the introductory text of the page. It tells people what they’ll find here, why the topic is important, etc. This text is within the main element, and so it will be used to retrieve this page in searches.
Specifics about the event.
</main>
<footer>Redundant footer code</footer>
Various scripts, etc.
</body>
```

## Resources

* [HTML <main> Tag](https://www.w3schools.com/tags/tag_main.asp) {% external_link %} - accessed October 10, 2018.
* [Robots meta tag and X-Robots-Tag HTTP header specifications
](https://developers.google.com/search/reference/robots_meta_tag) {% external_link %} - accessed October 10, 2018.
* [rel=canonical: the ultimate guide
](https://yoast.com/rel-canonical/) {% external_link %} - accessed October 10, 2018.
* [Consolidate duplicate URLs: Define a canonical page for similar or duplicate pages](https://support.google.com/webmasters/answer/139066?hl=en) {% external_link %} - accessed October 10, 2018.
