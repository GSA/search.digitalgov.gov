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

The best way for you to give us your content is through either a content API or RSS feed. It doesn't matter what underlying technology you use to publish your content as long as you can provide us with the following four fields.

1. **Title.** The page's title.
1. **Page Content.** The page's full text in the description for a full text search.
1. **Summary.** The desired summary of the page.
1. **URL.** The page's URL.
1. **Update Date.** The page's publication or revision date. Provide whichever date you'd like searchers to see.

Below is sample JSON:

    {
        "total": 99,
        "offset": 10,
        "next_url": "http://yourdomain.com/content.json?offset=10&limit=2
    ",
     "items": [
     {
      "title": "title 1",
      "url": "http://yourdomain.gov/pages/1",
      "summary": "page summary",
      "content": "page content without HTML template (header / footer / navition, etc.)",
      "updated_at": "2014-10-30T15:39:37-04:00"
    },
    {
      "title": "title 2",
      "url": "http://yourdomain.gov/pages/2",
      "summary": "page summary",
      "content": "page content without template",
      "updated_at": "2014-10-29T12:19:17-04:00"
      }
     ]
    }

We also support custom fields. [Let us know](mailto:search@support.digitalgov.gov) if you have any custom fields that you'd like us to index.

### Via Content APIs

What is a content API? It is an application programming interface (API) to your website's content. It is output directly from your site's CMS. Content APIs are relatively easy to create from CMS such as Drupal or WordPress.

If you already have a content API, email us at <search@support.digitalgov.gov> so we can get you up and running. 

If you don't have one yet, below are a few good references to get you started. 

* **Drupal APIs.** The [Services Entity](https://www.drupal.org/project/services_entity){% external_link %} and [Content API](https://www.drupal.org/project/contentapi){% external_link %} modules both create content APIs from Drupal.
* **WordPress APIs.** The [JSON API](https://wordpress.org/plugins/json-api/){% external_link %} and [WordPress API](https://github.com/WP-API/WP-API){% external_link %} plugins both create content APIs from WordPress. 

### Via RSS Feeds

RSS is a standard for content syndication. RSS is used to notify others about new content on your site. We use it to index your content. 

If you don't already have an RSS feed, below are a few good references to get you started. 

* **Drupal Feeds.** Drupal includes built-in RSS feed administration out-of-the-box. No modules are required. In Drupal 7, you can find it Admin > Config > Services > RSS. Plugins, such as [Feeds](https://www.drupal.org/project/feeds){% external_link %}, allow you to extend the out-of-the-box RSS feed capability. You can use views, such as [Views RSS](https://www.drupal.org/project/views_rss){% external_link %}, to turn a customized view into an RSS feed.
* **WordPress Feeds.** WordPress creates various RSS feeds out-of-the-box. Learn how to set up [WordPress feeds](http://codex.wordpress.org/WordPress_Feeds){% external_link %} and [customize feeds](http://codex.wordpress.org/Customizing_Feeds){% external_link %}.

Most RSS feeds show the latest 10 items by default. This means that you'll need to create a one-time "baseline" feed to give us *all* of your existing content. Email us at <search@support.digitalgov.gov> so we can coordinate the indexing of your baseline feed with you. After we've indexed your existing content, we'll use the 10 items in your standard RSS feed to index your new and updated content.

---

***Did you know?*** You can [choose which web index you use](/manual/content-overview.html#choose-an-index) for your default search results&mdash;Bing, Google, DigitalGov Search, or another source.