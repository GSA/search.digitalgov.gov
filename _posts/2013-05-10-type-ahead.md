---
permalink: /manual/type-ahead.html
layout: post
title: "How to Implement Type-ahead Search"
tags: type-ahead how-to
---
[USASearch](http://usasearch.howto.gov) > [Admin Center](http://search.usa.gov/affiliates/home) > YourSite > Type-ahead Search

Type-ahead search is fast becoming a best practice on websites, and we've made this technology available for your site. 

Suggestions display as a list in the search box. This list forms as the searcher begins to type in the search box. The suggestions are listed in order of most popular (that is, most searched). They're updated every 15 minutes.

See the sample suggestions below as the searcher types di... on [SocialSecurity.gov](http://search.socialsecurity.gov/search?affiliate=ssa&query=names).

![Type-ahead suggestions for 'di...' on SocialSecurity.gov](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/type-ahead.png)

## Type-ahead on the Search Results Page

By default, searchers see type-ahead search suggestions on your search results page. You can uncheck the box labeled Enable Type-ahead search to turn off this feature on your search results pages.

***Populate.*** Terms and phrases are automatically populated every 15 minutes from searches done in your site's search box. On day one of testing USASearch, there will be no terms in Type-ahead Search (unless you add terms to the list, as noted below). The list of terms will build up within minutes after you implement USASearch on your live website and searchers type their queries in the search box on your site.

***Add terms to the list.*** You may choose to add terms to the list that displays in type-ahead search. You may upload an individual term (i.e. click on "Add a New Entry") or add a group of terms all at once (i.e., click on "Bulk Upload"). To bulk upload:

* Create a new text file, one entry per line, for example,    
  acadia national park    
  okefenokee    
  okefenokee swamp    
  yosemite national park    
  yosemite valley
* Save as a text file on your computer. (Do *not* save as spreadsheet or word processing files, such as .xls or .doc.)
* Add, modify, or delete individual entries in the file.
* Browse for the text file on your computer.
* Upload the file to the Admin Center.

***Delete terms from the list.*** You may also delete individual terms that you don't want listed, through "Current Entries". Use "Filter" to search for particular terms to edit.

## Type-ahead on Other Web Pages

You can also add the type-ahead search suggestions to your homepage, or wherever you have a search box on your website, by adding the USASearch JavaScript code to the head to your HTML web page. For more details, read our post on [How to Add Our Code to Your Website](/manual/get-code.html).