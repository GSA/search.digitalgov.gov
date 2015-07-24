---
layout: post
title: Getting Started With i14y
category: manual
tags: "help-manual manage-content i14y"
published: true
---

[i14y Github repo](https://github.com/GSA/i14y) | [Technical Documentation](http://gsa.github.io/slate/)

Do you want to have real-time updates to your search index, and full control over your page titles and descriptions? Then our [i14y content ingestion API](https://github.com/GSA/i14y) is for you! Take a look at our [i14y FAQ](http://search.digitalgov.gov/developer/i14y.html), and then jump right in!

## Step 1. Create a new site for your i14y content search

To send content for indexing via i14y, you will need to know what site you are sending it to. You can 

* [add a brand new site](http://search.digitalgov.gov/manual/add-site.html), or 
* [email us](mailto:search@support.digitalgov.gov) to request we copy one of your existing site’s settings to a new site. Note we cannot copy into an existing site, so don't set one up first.

## Step 2. Ask us to assign this new site to i14y

When requesting a site copy, let us know you want the new site to connect to i14y. If you have created a brand new site, [email us](mailto:search@support.digitalgov.gov) to request it be connected to i14y.

## Step 3. Add one or more Drawers

After a search site has been connected to i14y, a new page will appear: [Admin Center](https://search.usa.gov/sites/) > YourSite > Manage Content > i14y Drawers.

Click `Add i14y Drawer` in the upper right corner, create a handle, give it an optional description, and click Add to save. [Read more about working with Drawers](/i14y-drawers.html).

## Step 4. Fill your Drawer

Here’s where the rubber hits the road: use the i14y API to add content to your drawer. You can do this in two ways:

* Use i14y directly. [Github repo](https://github.com/GSA/i14y) | [Technical Documentation](http://gsa.github.io/slate/)
* Use a module plugged into your CMS. At this time there is a [Drupal module](https://www.drupal.org/project/usasearch) and a [Wordpress plugin](https://github.com/GSA/sites-digitalgov-search) available.

## Step 5. Review your index

You can view the number of documents indexed for each drawer on the main i14y Drawers list. We also send success and / or failure codes in response to your API call, so if the number of documents in our index doesn’t match what you sent, check those response codes. Response codes are also available in your CMS module.

## Step 5. Configure your search

Once you have your index populated, you will [set up the rest of your search](http://search.digitalgov.gov/manual/content-overview.html) as you would for a traditional DigitalGov Search site. Set your default search scope on your [Domains](http://search.digitalgov.gov/manual/domains.html) page, add Social Media accounts ([Flickr](http://search.digitalgov.gov/manual/flickr.html), [Instagram](http://search.digitalgov.gov/manual/instagram.html), [Twitter](http://search.digitalgov.gov/manual/twitter.html), and [YouTube](http://search.digitalgov.gov/manual/youtube.html), create [Collections](http://search.digitalgov.gov/manual/collections.html), and set your results page Display (both [search features](http://search.digitalgov.gov/manual/display-overview.html) and [branding](http://search.digitalgov.gov/manual/brand.html)).

If you have any [RSS content](http://search.digitalgov.gov/manual/rss.html) that will not be included in your i14y drawer, you can add those feeds as well.

## Step 6. Update your search box

Update your website’s search box form code to point to `affiliate=**yournewi14ysite**`