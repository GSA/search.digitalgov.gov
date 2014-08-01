---
layout: post
title: How to Connect Your CMS to Your Search
category: blog
tags: how-to manage-content rss content-api api
---

Content management systems (CMS) have made it easier for us to fetch and index your web site's content directly. Indexing your content directly allows us to improve your site's search by:

* Providing real-time access to your new and updated content. 
* Providing guaranteed, 100% coverage of your content.
* Giving searchers the option to sort results by date and to filter results based on your metadata tags.

## Give Us Your Content

The best way for you to give us your content is through either a content API or RSS feed. It doesn't matter what underlying technology you use to publish your content. Provide us with the following information.

* **Title.** Provide the page's title.
* **Description.** Provide the page's full text in the description for a full text search. Or, provide a short snippet about the page for a more precise search.
* **URL.** Provide the page's URL.
* **Date.** Provide either the page's publication or revision date. Use whichever date you'd like to searchers to see.

We also support custom fields. [Let us know](mailto:search@support.digitalgov.gov) if you have any custom fields that you'd like us to index.

### Content APIs 

What is a content API? It is an application programming interface (API) to your website's content. It is output directly from your site's CMS. Content APIs are relatively easy to create from CMS such as Drupal or WordPress.

If you already have a content API, email us at <search@support.digitalgov.gov> so we can get you up and running. 

If you don't have one yet, below are a few good references to get you started. 

* **Drupal APIs.** The [Services Entity](https://drupal.org/project/services_entity){% external_link %} and [Content API](https://drupal.org/project/contentapi){% external_link %} modules both create content APIs from Drupal.
* **WordPress APIs.** The [JSON API](https://wordpress.org/plugins/json-api/){% external_link %} and [Worpress API](https://github.com/WP-API/WP-API){% external_link %} plugins both create content APIs from WordPress. 

### RSS Feeds

RSS is a standard for content syndication. RSS is used to notify others about new content on your site. We use it to index your content. 

If you don't already have an RSS feed, below are a few good references to get you started. 

* **Drupal Feeds.** Drupal includes built-in RSS feed administration out-of-the-box. No modules are required. In Drupal 7, you can find it Admin > Config > Services > RSS. Plugins, such as [Feeds](https://www.drupal.org/project/feeds){% external_link %}, allow you to extend the out-of-the-box RSS feed capability. You can use views, such as [Views RSS](https://www.drupal.org/project/views_rss){% external_link %}, to turn a customized view into an RSS feed.
* **WordPress Feeds.** WordPress creates various RSS feeds out-of-the-box. Learn how to set up [WordPress feeds](http://codex.wordpress.org/WordPress_Feeds){% external_link %} and [customize feeds](http://codex.wordpress.org/Customizing_Feeds){% external_link %}.

Most RSS feeds show the latest 10 items by default. This means that you'll need to create a one-time "baseline" feed to give us *all* of your existing content. Email us at <search@support.digitalgov.gov> so we can coordinate the indexing of your baseline feed with you. After we've indexed your existing content, we'll use the 10 items in your standard RSS feed to index your new and updated content.

## Send Us Your Feedback

Note that this isn't a definitive list. The third-party modules and plugins listed above are provided as starting point for these two common CMS. Any feed or API that provides a title, description, URL, and date for each content item will work. 

Do you have useful link on how to create RSS feeds or content APIs?

[Send us your suggestions](mailto:search@support.digitalgov.gov) and we'll update this post.

---

***Did you know?*** If you'd like to choose which search results you use (from Bing, Google, or some other source), we support [bringing your own index](/blog/byoi.html).