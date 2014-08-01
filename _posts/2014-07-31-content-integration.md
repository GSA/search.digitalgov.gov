---
layout: post
title: How to Directly Integrate Your Content with DG Search
category: developer
tags: how-to integrate-content api
---

[DigitalGov Search](/index.html) > [APIs for Developers](/developer/index.html) > Content Integration

# How to Directly Integrate Your Content with DG Search

Content management systems (CMS) have made it easier for us to fetch and index your web site’s content directly. The best way for you to give us your content is through a full-text content API or RSS feed. 

Indexing your content directly allows us to improve your site’s search by:

* Title&mdash;Title of the the page.
* Description&mdash;If you want to search the full text of your page, provide the page’s full text as the description. If you want a more precise, metadata search, provide a short snippet about the page in the description.
* URL&mdash;URL of the page.
* Date&mdash;The published or revised date of the page. Use whichever date you’d like to show searchers.

Email us at <search@support.digitalgov.gov> if there are any custom fields in your API or feed that you’d like us to leverage.

## Content APIs 

What is a content API? It is an application programming interface (API) to your website’s content. It is output directly from your site’s content management system (CMS). Content APIs are relatively easy to create from CMS such as Drupal or WordPress.

If you already have a content API, you don’t have to modify it. All you have to do is email us at search@support.digitalgov.gov so we can get you up and running. 

Below are a few good references to get you started. 

* **Drupal APIs**&mdash;The [Services Entity](https://drupal.org/project/services_entity) and [Content API](https://drupal.org/project/contentapi) modules both create content APIs from Drupal.
* **WordPress APIs**&mdash;The [JSON API](https://wordpress.org/plugins/json-api/) and [Worpress API](https://github.com/WP-API/WP-API) plugins both create content APIs from WordPress. 

## RSS Feeds

RSS is Internet standard for content syndication, and we use to index your content. Traditionally, RSS is used to notify other web sites about new content on your site. Almost all CMS systems have RSS capabilities, but, by default, show the latest 10 items. 

As a result, for us to index all of your content, you’ll need to create a one-time feed that provides us all of your content. Email us at search@support.digitalgov.gov so we can get you up and running. After this initial setup is complete, we’ll use the standard 10 items to index your new and updated content.

**Drupal** includes built-in RSS feed administration out-of-the-box. No modules are required. In Drupal 7, you can find it Admin > Config > Services > RSS. Plugins, such as [Feeds](https://www.drupal.org/project/feeds){% external_link %}, allow you to extend the out-of-the-box RSS feed capability. You can use views, such as [Views RSS](https://www.drupal.org/project/views_rss){% external_link %}, to turn a customized view into an RSS feed.

**WordPress** creates various RSS feeds out-of-the-box. Learn how to [set up WordPress feeds](http://codex.wordpress.org/WordPress_Feeds){% external_link %} and [customize feeds](http://codex.wordpress.org/Customizing_Feeds){% external_link %}.

## Send Us Your Feedback

Note that this isn’t a definitive list. The third-party modules and plugins listed above are provided as starting point for these two common CMS. Any feed or API that provides a title, description, URL, and date for each content item will work. 

Do you have useful link on how to create RSS feeds or content APIs?

Use the form below to send us your suggestions and we’ll update this post.

<iframe src="https://docs.google.com/forms/d/1ySM8p6TD_z_LhzkXY8DTrKaJNHFBHZQkoYmJirBRv1k/viewform?embedded=true" width="760" height="500" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>