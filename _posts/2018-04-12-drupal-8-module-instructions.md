---
layout: post
title: Step by Step Instructions for Setting Up the Drupal 8 usasearch module
category: manual
tags: drupal, i14y
---

> **Important Note:** April, 2018. For new implementations, the Search.gov team recommends you index your content with us not using our Drupal module to send content to our i14y indexing API, but rather by publishing a comprehensive XML sitemap, which we can use to index your content. We recommend the [XML Sitemap module](https://www.drupal.org/project/xmlsitemap){% external_link %}. [Read more.](/blog/six-months-in.html)

This documentation will walk you through setting up the `usasearch` [Drupal 8 module](https://www.drupal.org/project/usasearch/releases?api_version%5B%5D=7234){% external_link %} field by field, to integrate your Drupal CMS with the Search.gov service. If you have trouble, take a look at our [troubleshooting tips](/manual/drupal-module-troubleshooting.html). 

These instructions follow the order of settings listed in our Drupal module at `YOUR-DRUPAL-8-SITE.gov/admin/config/search/usasearch`.

Instructions for setting up the **Drupal 7** module are [here](/manual/drupal-7-module-instructions.html).

## Search Settings

This section allows you to configure how the `USA Search Block` will use our service. In Drupal 8, you must place the `USA Search Block`, as we do not override the native Drupal Search. We recommend you disable the native Drupal Search block. 

### Site handle

Required. Enter the site handle you gave your search site. This is found in our [Search Admin Center](https://search.usa.gov/sites) > Your site > Dashboard > Settings.

### Enable autocomplete 

Recommended setting: Checked.

Check this box if you want to enable the Javascript for our [Type-ahead API](/developer/). Suggestions for popular queries will appear below your search box as searchers begin typing. A query must have been run more than 10 times in a day for it to become a search suggestion.

### Search domain

We offer [domain masking](/manual/cname.html), which allows you to display `search.YOURAGENCY.gov` in the URL of your search results page, instead of the default `search.usa.gov`. 

NOTE: Only change this setting if you have domain masking configured for your search site! If you haven’t set it up, leave the default `https://search.usa.gov` until you’ve completed the masking steps.

## Connecting Drupal to Our System for Direct Indexing

Highly recommended! The “i14y API settings” section allows you to send content directly to our indexes via our i14y API. This means that you'll have full control over the content of your search results, and your search index will be updated in real time. Note: If you do not want to index your content with us yourselves, do not complete this section. If you only want to use our system for search, skip this section and the following Indexing section. 

### Enable i14y API

Recommended! If this box is checked, the module will send content to Search.gov for indexing. The `Drawer Handle` and `API Secret Token` fields will be required.

### Drawer Handle

Enter your i14y  "drawer handle”. This is the name you gave your drawer and is found in: [Search Admin Center](https://search.usa.gov/sites) > Your site > Manage Content > i14y Drawers. 

### i14y API Secret Token

Enter your i14y drawer’s “secret token”. This can be found in our system in: [Search Admin Center](https://search.usa.gov/sites) > Your site > Manage Content > i14y Drawers, select the option, `Show`.

### Content Types

Recommended setting (default): Checked - all types.

Select which content types will be sent to our indexes. Content types unchecked here will **not** be indexed. You can also control indexing status of individual nodes in their Search.gov settings.

If you exclude a content type from indexing, and later decide to *include* it, nodes of this type will be indexed on the next cron run. You may also want to review any nodes that were created in the interim, to ensure in their individual Search.gov settings that they are enabled for indexing.

### Description View Mode

Recommended setting: Teaser.

Select the search result description text that works best for your site. Choose among the text you’ve set as your teaser, RSS item content, Drupal search index snippet, or full text. The view mode  will need to be enabled and configured for each content type. If the view mode is not available for a content type, "Teaser" will be used. The full text of your node will still be searchable.

Note: If you don't like the content that's being sent to us as the Teaser, you can make changes for that content type's at `YOUR-DRUPAL-8-SITE.gov/admin/structure/types/manage/[CONTENT TYPE] > Display settings` or
`YOUR-DRUPAL-8-SITE.gov/admin/structure/types/manage/[CONTENT TYPE]/display/teaser`

### Enable i14y logging

Recommended setting (default): Checked.

Check this box to log i14y API operations to the watchdog log. On `YOUR-DRUPAL-8-SITE.gov/admin/reports/dblog`, filter by Type `usasearch`.

### Alternate indexing domain 

Do you edit your site on one domain or subdomain, but publish on another? If so, use this field to set the domain you want us to present for your content on the search results page. For instance, if you enter `www.YOURAGENCY.gov` here, nodes that are stored in Drupal under `edit.YOURAGENCY.gov` would be indexed with us as `www.YOURAGENCY.gov`.

## Indexing

### Re-index site

If you click `re-index site`, we will begin a full-site reindexing on your next cron run. You can wait for cron to run, or you can run it manually. 

### Number of items to index per cron run

Use this throttle to adjust the number of documents sent to us in each cron run. The number that is best for your site will depend on various factors, including your firewall. 

## Save configuration 

After you save these settings, the module will send a command to us when you hit `Save` on a node in Drupal, either to add the node to the index, update it, or delete it from the index.

## Having trouble?

Take a look at our [troubleshooting tips](/manual/drupal-module-troubleshooting.html), and don't hesitate to [reach out](mailto:search@support.digitalgov.gov). We're not Drupal experts ourselves, but we'll try to help.

