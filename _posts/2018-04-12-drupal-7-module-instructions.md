---
layout: post
title: Step by Step Instructions for Setting Up the Drupal 7 usasearch module
category: manual
tags: drupal, i14y
---

> **Important Note:** April, 2018. For new implementations, the Search.gov team recommends you index your content with us not using our Drupal module to send content to our i14y indexing API, but rather by publishing a comprehensive XML sitemap, which we can use to index your content. We recommend the [XML Sitemap module](https://www.drupal.org/project/xmlsitemap){% external_link %}. [Read more.](/blog/six-months-in.html)

This documentation will walk you through setting up the `usasearch` [Drupal 7 module](https://drupal.org/project/usasearch){% external_link %} field by field, to integrate your Drupal CMS with the Search.gov service. If you have trouble, take a look at our [troubleshooting tips](/manual/drupal-module-troubleshooting.html). 

These instructions follow the order of settings listed in our Drupal module at `YOUR-DRUPAL-7-SITE.gov/admin/config/search/usasearch`.

Instructions for setting up the **Drupal 8** module are [here](/manual/drupal-8-module-instructions.html).

## Affiliate site handle

Required. Enter the site handle you gave your search site. This is found in our [Search Admin Center](https://search.usa.gov/sites) > Your site > Dashboard > Settings.

## Drawer Handle

Required. Enter your i14y  "drawer handle”. This is the name you gave your drawer and is found in: [Search Admin Center](https://search.usa.gov/sites) > Your site > Manage Content > i14y Drawers. 

## i14y API Secret Token

Required. Enter your i14y drawer’s “secret token”. This can be found in our system in: [Search Admin Center](https://search.usa.gov/sites) > Your site > Manage Content > i14y Drawers, select the option, `Show`.

## Enable autocomplete 

Recommended setting (default): Checked.

Check this box if you want to enable the Javascript for our [Type-ahead API](/developer/). Suggestions for popular queries will appear below your search box as searchers begin typing. A query must have been run more than 10 times in a day for it to become a search suggestion.

## Search domain

We offer [domain masking](/manual/cname.html), which allows you to display `search.YOURAGENCY.gov` in the URL of your search results page, instead of the default `search.usa.gov`. 

NOTE: Only change this setting if you have domain masking configured for your search site! If you haven’t set it up, leave the default `https://search.usa.gov` until you’ve completed the masking steps.
  
## Alternate indexing domain 

Do you edit your site on one domain or subdomain, but publish on another? If so, use this field to set the domain you want us to present for your content on the search results page. For instance, if you enter `www.YOURAGENCY.gov` here, nodes that are stored in Drupal under `edit.YOURAGENCY.gov` would be indexed with us as `www.YOURAGENCY.gov`.

## Use rules to index content

Check this box to index content manually with rules. IMPORTANT: If checked, the Search.gov index will not be updated unless specified in a rule action. 

Be sure to write rules for your content types in sets of three: 
* adding to the index
* updating the index 
* deleting from the index

## Results Description View Mode

Recommended setting (default): Teaser. 

Select the search result description text that works best for your site. Choose among the text you’ve set as your teaser, RSS item content, Drupal search index snippet, or full text. The view mode will need to be enabled and configured for each content type. If the view mode is not available for a content type, "Teaser" will be used. We will still index and search the full text of your content if `Indexed content view mode` is `Full content`.

Note: If you don't like the content that's being sent to us as the Teaser, you can make changes for that content type's at `YOUR-DRUPAL-7-SITE.gov/admin/structure/types/manage/[CONTENT TYPE] > Display settings` or at `YOUR-DRUPAL-7-SITE.gov/admin/structure/types/manage/[CONTENT TYPE]/display/teaser`.

## Indexed content view mode

Recommended setting (default): Full content. 

If you don't want the full text of your nodes to be searchable, select a preferred view mode to define the content that gets indexed. If the view mode is not available for a content type `Full content` will be used.

## Include by content type unless explicitly excluded 

Recommended setting (default): Checked. 

Check this box to include entire content types in the search index. Include or exclude particular content types in their entirety in the Search.gov settings for the content type's structure page, e.g. `YOUR-DRUPAL-7-SITE.gov/admin/structure/types/manage/article`. You can exclude individual nodes using the Search.gov Settings within the node edit view.

If this box is unchecked, node indexing will need to be managed individually. We recommend you leave the box checked on the module settings.

If you exclude a content type from indexing, and later decide to *include* it, nodes of this type will be indexed on the next cron run. You may also want to review any nodes that were created in the interim, to ensure in their individual Search.gov settings that they are enabled for indexing.

## Save configuration 

After you save these settings, the module will send a command to us when you hit `Save` on a node in Drupal, either to add a node to the index, update it, or delete from the index.

If you select `re-index site` on the main Drupal search settings page (see below), we will begin a full-site reindexing on your next cron run.

## Optional: Indexing content retroactively

Go to the main Drupal search settings page (`YOUR-DRUPAL-7-SITE.gov/admin/config/search/settings`) and click `Re-index site`. This will start sending us content for indexing on your next cron run. You can wait for cron to run, or you can run it manually. You can also adjust the number of documents sent to us in each cron run using the `throttle` setting on the Drupal search settings page.

## Having trouble?

Take a look at our [troubleshooting tips](/manual/drupal-module-troubleshooting.html), and don't hesitate to [reach out](mailto:search@support.digitalgov.gov). We're not Drupal experts ourselves, but we'll try to help.

