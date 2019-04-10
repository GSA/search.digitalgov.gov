---
layout: post
title: How to Highlight Graphics Best Bets
category: manual
tags: help-manual manage-content best-bets
---

[Search.gov Home](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Manage Content > Best Bets: Graphics

Do you want to promote a specific web page or collection of web pages? Create a Graphics Best Bet.

A best bet appears above the standard web results when a searcher's query matches the text of its title, description, or keywords.

Graphics best bets have a one or two-column layout and you can add an image. The most relevant best bet is listed under a heading, Recommended by YourSite.

See the sample results page below that shows a text best bet displayed on [USGS.gov for a search on tsunamis](http://search.usa.gov/search?affiliate=usgs&query=tsunamis).

[![Graphics best bet highlighting tsunami links on USGS.gov](https://d3qcdigd1fhos0.cloudfront.net/blog/img/best-bets-graphics.png "Graphics best bet highlighting tsunami links on USGS.gov")](http://search.usa.gov/search?affiliate=usgs&query=tsunamis)

There are a variety of layouts possible for graphics best bets.

* **Two columns with a collection of links and an image** displayed on USA.gov for a search on *[wildfires](https://search.usa.gov/search?query=wildfires&affiliate=usagov)*. 
* **Two columns with a collection of links only** displayed on USA.gov for a search on *[housing](https://search.usa.gov/search?affiliate=usagov&query=housing)*. 
* **One column with a link to a specific web page and an image** displayed on WhiteHouse.gov for a search on *[jobs](https://search.whitehouse.gov/search?affiliate=wh&query=jobs)*.

## Add a Graphics Best Bet

***Title.*** Add the title (up to 255 characters) of the web page or collection of web pages that you want to promote. The title is visible to searchers.

***Title URL.*** Add the URL of the primary web page that you want to promote. This field is optional.

***Status and Publish Dates.*** The default start date is the day on which you create the best bet. The default end date is null, so it will stay up forever until you decide to take it down. You can opt to set a start and end date to control to specify other start and end dates. You can also opt to set its status as either active or inactive.

***Layout.*** Select a one- or two-column layout. 

***Image.*** You can opt to add an image.

***Keywords.*** Keywords are optional and they're *not* visible to searchers. Add specific words or phrases that aren't already included in the visible title or link titles. Common keywords include synonyms, acronyms, compound words, misspellings, slang, or other variants. Enter each keyword (word or phrase up to 255 characters) in a separate field.

***Links.*** Enter a title and URL for each link. There is no limit on the number of links. Use the three horizontal bars on the left to rearrange the display order of the links. If you select a two-column layout above, links are displayed in newspaper-style format, with an automatic break for columns depending on how many links you list. The link titles are visible to searchers.

## When Searchers See Your Best Bets

For searchers to see a best bet on your site, it must match their query and be relevant and active.

### It Matches Their Query

Searchers see your best bets when their query:

* Matches any or all words in the title,
* Matches any of all words in the link titles, or
* Matches a keyword exactly.

Matches are made within, but not across, fields.

A sample best bet entry is below.

    Title: Estate Tax  
    Link title 1: Transfer Property After You Pass Away  
    Link title 2: Estate Tax Rights  
    Link title 3: Tax Rates  
    Keyword 1: death tax  
    Keyword 2: inheritance tax  
    Keyword 3: fair market value  
    Keyword 4: market value  

This best bet would display for searches on estate tax (exact title match), estate (partial title match), tax on the estate (title match that includes stopwords), estate taxes (title match for singular/plural variant), property tax (partial link title match), propertey tax (link title match with a slight misspelling), and death tax (exact keyword match), among other queries.

It would *not* display for searches on death, death property, taxes after death, fair value, or estate property tax as they're only partial keyword or cross field matches.

### It Is Very Relevant

After we determine best bets match the searcher's query, we determine their relevance and display only the most relevant best bet. Relevance is determined, in order, first by title, then by link titles, and lastly by keywords. Date is used as a tiebreaker if the entries' scores based on the above three factors are equal. 

### It Is Active

We use [color coding](/manual/color-codes.html) to indicate each entry's status. 

| Color | Status | 
| :------------ | :---------------------------------- |
| Green&nbsp;&nbsp;&nbsp;  | Active&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| Yellow   | Inactive |
| &nbsp; | &nbsp; |

Active best bets are shown to searchers on your site. Inactive entries aren't shown to searchers because they're inactive, expired (by the publish end date), or both.

--- 

Watch the recording of our February 2015 webinar [**Straight to the Top: Best Bets in DigitalGov Search**](https://www.youtube.com/embed/WzQocKYK0t4) (55 mins)

***Did you know?*** See also our closely related feature that allows you to create a [Text Best Bets](/manual/best-bets-text.html).

***Did you know?*** Use the [Search Page Alert](/manual/system-alert.html) feature to add a text message to your search results page, which will appear at all times above all search results, *regardless of the query*.

***Did you know?*** Analyze the number of impressions and clicks and clickthru rate for each best bet on the [Monthly Reports](/manual/monthly-reports.html) page. Use the data to inform your titles, descriptions, and keywords and your decision to deactivate or delete an entry.
