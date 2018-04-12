---
layout: post
title: Drupal Module Troubleshooting Tips
category: manual
tags: drupal, i14y
---

> **Important Note:** April, 2018. For new implementations, the Search.gov team recommends you index your content with us not using our Drupal module to send content to our i14y indexing API, but rather by publishing a comprehensive XML sitemap, which we can use to index your content. We recommend the [XML Sitemap module](https://www.drupal.org/project/xmlsitemap){% external_link %}. [Read more.](/blog/six-months-in.html)

If you have installed the `usasearch` [Drupal module](https://drupal.org/project/usasearch){% external_link %} to integrate your Drupal CMS with the Search.gov service but are having trouble, the following suggestions should help you identify where the problem is. If after working through these items you still have questions, [reach out to our team](mailto:search@support.digitalgov.gov) and, though we're not Drupal experts, we can try to help. 

<a href="#search-errors">Skip to Search error troubleshooting tips</a>

## Indexing errors

### Do you have the right module for your Drupal version?

We have modules for both Drupal 7 and Drupal 8. If your site is in Drupal 7, use `usasearch-7.x-5.7`. If your site is in Drupal 8, click [View all Releases](https://www.drupal.org/project/usasearch/releases){% external_link %} and select API version `8.x`.

### Have you set up an i14y drawer?

In order to send content from Drupal to our system, you'll need an index to send the content into. We call these indexes "Drawers", because like drawers in a filing cabinet, all the items put into them will be the content you can search against. [Read more about Drawers here](/manual/i14y-drawers.html). In order to set up a drawer, your search site will need to be enabled for i14y, so [contact us](mailto:search@support.digitalgov.gov) to request that.

### Has any content actually been sent to us? 

The module sends content when someone hits `save` on a node, or when you run `re-index site`. In Drupal 7, `re-index site` is found on the main Drupal search settings page (`YOUR-DRUPAL-SITE.gov/admin/config/search/settings`); in Drupal 8, you can re-index the site from the bottom of the module settings page. 

* If these actions have indeed happened, check the Drupal recent log messages (`YOUR-DRUPAL-SITE.gov/admin/reports/dblog`) to see if there's anything related to `usasearch`, and please [send us screenshots of the errors](mailto:search@support.digitalgov.gov). 
* If these actions haven't yet happened, please hit `save` on a node, and see if that item appears in your Drawer. You can view the contents of your Drawer by selecting [Search Admin Center](https://search.usa.gov/sites) > Your site > Content > i14y Drawers > Show. If the item isn't there, then check the Drupal log for an error.

### Is your firewall letting you communicate with us? 

If content isn’t reaching us, it could be that your firewall is not allowing you to reach i14y. Please run the following from the command line, from inside the same firewall as your web server, if possible. Note: you’ll need to customize the string below with your i14y drawer’s handle and secret token (where it says `YOURDRAWERHANDLE:YOURDRAWERSECRETTOKEN`):

```
curl "https://i14y.usa.gov/api/v1/documents" -XPOST -H "Content-Type:application/json" -u YOURDRAWERHANDLE:YOURDRAWERSECRETTOKEN -d '{"document_id":"1", "title":"test item", "created":"2017-02-16T10:19:02", "path":"https://www.usa.gov", "description":"This is a test", "content":"This is a test to see if the agency web server is able to communicate with the i14y API. If this document does not show up in the drawer in the admin center, then the i14y location may need to be whitelisted in order to facilitate indexing."}'
```

* If you get a `403 Forbidden` response

  Please contact your security team to request the i14y hostname be whitelisted: `https://i14y.usa.gov/`

  We can’t give you an IP to whitelist, as our system is hosted in AWS, and so i14y’s IP address changes regularly. 

* If you get a `200 OK` response

  Your system is able to communicate with our system, so the issue must lie in how the module is working with your Drupal instance. [Send us](mailto:search@support.digitalgov.gov) all the information and screenshots of errors that you can, and we’ll help you troubleshoot.

  Be sure you delete the test document or it will be included in your search results. You can delete it from the command line. Run this command:

  ```
  curl "https://i14y.usa.gov/api/v1/documents/1" -XDELETE -u YOURDRAWERHANDLE:YOURDRAWERSECRETTOKEN
  ```


* If you get any other error response

  Please take a screenshot and [send it to us](mailto:search@support.digitalgov.gov) to report the issue so we can investigate the error.
  
### Do you have another question? 

If you have another question about indexing with our service through the `usasearch` Drupal module, [don't hesitate to ask](mailto:search@support.digitalgov.gov)!

<a name="search-errors"></a>

## Search errors

### Is your Drupal site search box showing Drupal search results?

* If you have a **Drupal 7** site

  Our Drupal 7 module is designed to take over the native Drupal search box on your site, and direct queries to the site you specify in the `affiliate site handle` field. If you're seeing other results - either the Drupal search results or a different search site in our system, find out if the search box form code had been manually modified to point to this other location. Our module will only work with out-of-the-box Drupal search boxes. If the search box form code was modified, you'll need to manually point it to our service using the required parameters - you can see [general information on form code here](/manual/code.html), or you can view examples customized to your particular site within the Admin Center, under `Activate`. You may also be able to restore the form code to the Drupal default, to take advantage of the module's site handle field and be able to modify the site handle without a dev.
  
* If you have a **Drupal 8** site

  In Drupal 8, we don't override the native Drupal search box. Instead, you need to place a `USA Search Form` block, and disable the default Drupal search. To do this, go to `YOUR-DRUPAL-SITE.gov/admin/structure/block` in your Drupal site, and do `ctrl-F` to locate the word `Search` in the list. Disable the block that says just `Search`. Use `Place block` to insert a `USA Search Form` block in the block region of your choice. The search box in this block will point at the search site you entered in the module settings. 


### Is the Drupal site search box directing to the wrong Search.gov site?

Your search box should use the site handle you entered on the module settings page. If you run a search and are brought to our search results page, but see the wrong search site, check to see if the Drupal search box form code was manually modified to point to another search site handle (the `affiliate` parameter in the form code). If it was modified, you'll need to change the site handle directly in that modified code. You may also be able to restore the form code to the Drupal default, to take advantage of the module's site handle field and be able to modify the site handle without a developer.

### Do you have another question? 

If you have another question about searching through our service with the `usasearch` Drupal module, [don't hesitate to ask](mailto:search@support.digitalgov.gov)!
