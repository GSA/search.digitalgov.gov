---
layout: post
title: How to Select the Options that Appear on Your Results Page
category: manual
tags: how-to manage-display sidebar govbox related-sites
---

[DigitalGov Search](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Manage Display > Display Overview

## Sidebar (Faceted Navigation)

**Label for Sidebar.** Determine if you want to include a heading for your navigation options. If you want a heading, type your label in the label field. Keep your label short (15 or fewer characters) and consistent with the options you're listing. If you don't want a heading, leave the label field blank.

* Without heading&mdash;See the sample results page below that shows the navigation options without a heading displayed for a [search on *jobs* on WhiteHouse.gov](http://search.whitehouse.gov/search?affiliate=wh&query=jobs).
* With heading&mdash;See the sample results page below that shows the navigation options with a heading, labeled Search, displayed for a [search on *passport* on USA.gov](http://search.usa.gov/search?affiliate=usagov&query=passport).

**On/off options for sidebar.** Select which navigation options you'd like to appear in the left-hand sidebar on your results page. Turn an option on to allow searchers to see it. You may choose at any time to turn an option on or off.

You can type over the text in the Name field to edit an option's display name. Keep each name short (15 or fewer characters) and consistent with the content you're searching. Click on the hyperlink in the Source field to update the option's source content. Hover over the icon with three horizontal lines on the left to change the order.

## Modules

**On/off options for Modules.** Turn on a module to allow searchers to see inline, contextually relevant results for selected content sources based on keyword matches with relevant queries. There are eight types of modules.

1. **News.** This option only appears after you've told us about your [RSS](/manual/rss.html) feeds. When a searcher's query matches the title or description of an RSS article published within the last year, the article appears in the News GovBox. Up to three articles are displayed. Type over the default name, News, in the Name field to edit the display name.

1. **Videos.** This option only appears after you've told us about your [YouTube](/manual/youtube.html) channel. When a searcher's query matches the metadata of a video published within the last year, the video appears in the Videos GovBox. Up to four videos are displayed.

1. **Photos.** This option only appears after you've told us about your [Flickr](/manual/flickr.html) photostream. When a searcher's query matches the metadata of a photo published any time, the photo appears in the Photos GovBox. Up to five photos are displayed.

1. **Job openings.** When a searcher's query matches the text of a job opening published on USAJobs or NeoGov, the job appears in the Job Openings GovBox. Up to three job openings are displayed. For more information, including a screenshot, read our post [Help Searchers Find Jobs](/manual/govbox-jobs.html).

1. **Related searches.** Help visitors better define the focus of their search by offering them searches related to their current search term. Suggestions are derived from the searches performed on your website. Up to five searches related to your visitors' original search are displayed and are updated in near real time. See, for example, the sample results page below that shows related searches displayed for a [search on *tacoma* on Access Washington](http://search.usa.gov/search?affiliate=accesswashington&query=tacoma).

1. **Health topics.** Help searchers find high-quality, authoritative health information from MedlinePlus and ClinicalTrials.gov. For more information, including a screenshot, read our post [Help Searchers Find Health Information](/manual/govbox-health.html).

1. **Recent tweets.** This option only appears after you've told us about your [Twitter](/manual/twitter.html) account. When a searcher's query matches the text of a tweet published within the last three months, the tweet appears in the Recent Tweets GovBox. Up to three tweets are displayed.

1. **Type-ahead search.** Help searchers refine their query by displaying type-ahead search suggestions as a list in the search box. The list forms as a searcher begins to type in the search box. Suggestions are listed in order of most popular (that is, most searched). They're updated every 15 minutes. See, for example, the suggestions as you type di... on [SocialSecurity.gov's search results page](http://search.socialsecurity.gov/search?affiliate=ssa&query=names).

## Related Sites

Help visitors find content relevant to their search query that resides on other websites, such as the site for your parent organization or your Spanish-language site. When searchers click on the link to the related site, they see search results for their query on the related site.

Enter the [site handle](/manual/settings.html) for one of your other DigitalGov Search sites. Enter the text you'd like searchers to see for the link to the related site. Create two entries, one from the first site to the second and vice versa, if you'd like a reciprocal link.

See, for example, [a link to GobiernoUSA.gov displayed on USA.gov for a search on *venezuela*](http://search.usa.gov/search?query=venezuela&affiliate=usagov).

---

***Did you know?***  Searchers may narrow results by time period for any [RSS](/manual/rss.html) feeds. See, for example, results for a [search on *jobs* narrowed to press articles in the last week on WhiteHouse.gov](http://search.whitehouse.gov/search/news?affiliate=wh&channel=6&m=false&query=jobs&tbs=w).

***Did you know?***  For any of your [RSS](/manual/rss.html) feeds that you've extended with a contributor, publisher, or subject [Dublin Core](http://dublincore.org/documents/dcmi-terms/){% external_link %} property, searchers may narrow results by the three facets. We'll display "Contributor," "Publisher," and "Subject" as the default names. Email us at <search@support.digitalgov.gov> to if you want to customize these display names.

***Did you know?*** You can also add the type-ahead search suggestions to your homepage, or wherever you have a search box on your website, by adding our [JavaScript snippet](/manual/code.html) before the closing `<body>` tag on your HTML web pages.