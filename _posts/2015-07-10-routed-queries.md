---
layout: post
title: How to Route Queries
category: manual
tags: help-manual manage-content routed-queries
---
[DigitalGov Search](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Manage Content > Routed Queries

Do you want to get searchers to a specific web page as quickly as possible? Create a Routed Query.

A routed query skips the search results page and automatically directs visitors to a web page of your choice for very specific queries. Use query routing to save visitors the extra step of reading through search results links by taking them directly to your content pages.

We recommend creating a routed query for [top tasks](http://www.digitalgov.gov/2015/02/06/top-task-usability-design-for-your-users/) that have a good content page but less-than-ideal search results.

## Add a Routed Query

***Routed Query URL.*** Add the URL of the web page that you want to direct visitors to.

***Routed Query Description.*** Add a brief description to help you remember why you created this entry and what it does. Descriptions aren't used for indexing or visible to searchers.

***Keywords.*** Add the specific words or phrases used to trigger the routing. Searchers will only be directed to the URL above when their query term exactly matches one of the listed keywords. Common keywords include synonyms, acronyms, compound words, misspellings, slang, or other variants. Enter each keyword (word or phrase up to 255 characters) in a separate field. 

## Examples of How It Works

Private industry has been using query routing for some time. If you go to [Home Depot](http://www.homedepot.com/){% external_link %} and search for a general term like *carpet*, you're routed to their carpet navigation page. If you search for a more specific term like *vanities*, you get standard search results.

Using Kids.gov an as example, every time someone goes to [Kids.gov](https://kids.usa.gov) and searches for any of the following terms (must be exact matches), they'll automatically be directed to the Kids.gov [Three Branches of Government](https://kids.usa.gov/three-branches-of-government/index.shtml) page.

* 3 branches
* 3 branches of government
* branches of government
* executive branch
* government branches
* judicial branch
* legislative branch
* the three levels of government
* three branches of government

If they get routed to the [Three Branches of Government](https://kids.usa.gov/three-branches-of-government/index.shtml) and search again for one of these terms, they'll get the standard list of search results. We won't take people in an endless loop.

If they search for something not on the above list, like *what are the branches of government*, they'll still get the normal search results. 

![Standard search results for 'what are the branches of government' on Kids.gov](/img/routed-queries.png)