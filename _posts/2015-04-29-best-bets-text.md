---
layout: post
title: How to Highlight Text Best Bets
category: manual
tags: how-to manage-content best-bets
---
[DigitalGov Search](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Manage Content > Best Bets: Text

Do you want to promote a specific web page? Create a Text Best Bet.

A best bet appears above the standard web results when a searcher's query matches the text of its title, description, or keywords.

Text best bets have the same look as standard web results. Up to two relevant best bets are listed under a heading, Recommended by YourSite.

See the sample results page below that shows a text best bet displayed on TSA.gov for a search on *[razors](http://search.usa.gov/search?query=razors&affiliate=tsa.gov)*.

![Text best bets for 'razors' on TSA.gov](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/best-bets-text.png)

Text best bets may be added individually or via bulk upload. 

## Add an Individual Text Best Bet

***URL.*** Add the URL of the web page that you want to promote.

***Title and Description.*** Add the title and description of the web page that you want to promote. Each field can have up to 255 characters. Titles and descriptions are visible to searchers.

***Status and Publish Dates.*** The default start date is the day on which you create the best bet. The default end date is null, so it will stay up forever until you decide to take it down. You can opt to set a start and end date to control to specify other start and end dates. You can also opt to set its status as either active or inactive.

***Keywords.*** Keywords are optional and they're *not* visible to searchers. Add specific words or phrases that aren't already included in the visible title or description. Common keywords include synonyms, acronyms, compound words, misspellings, slang, or other variants. Enter each keyword (word or phrase up to 255 characters) in a separate field. 

## Add Multiple Best Bets via Bulk Upload

Create a comma-separated file with the following fields (in this order). Download our [sample template for uploading best bets](/files/best-bets-template.csv) [CSV] to see the correct format.

Title, URL, Description, StartDate, EndDate, Keywords

Title, URL, and description are required. Start date, end date, and keywords are optional. Save the file with .csv, .txt, or .xml extension and upload it.

Bulk upload updates any existing, matching entries and appends new entries to them.

## When Searchers See Your Best Bets

Searchers see your best bets when their query:

* Matches any or all words in the title,
* Matches any of all words in the description, or
* Matches a keyword exactly.

Matches are made within, but not across, fields.

A sample best bet entry is below.

**Title:** Estate Tax  
**Description:** A tax on your right to transfer property after you pass away.  
**Keyword 1:** death tax  
**Keyword 2:** inheritance tax  
**Keyword 3:** fair market value  
**Keyword 4:** market value  

This best bet would display for searches on estate tax (exact title match), estate (partial title match), tax on the estate (title match that includes stopwords), estate taxes (title match for singular/plural variant), property tax (partial description match), propertey tax (description match with a slight misspelling), and death tax (exact keyword match), among other queries.

It would *not* display for searches on death, death property, taxes after death, fair value, or estate property tax as they're only partial keyword or cross field matches.

--- 

***Did you know?*** See also our closely related feature that allows you to create a [Graphics Best Best](/manual/best-bets-graphics.html). We recommend creating a graphics best bet&mdash;with or without an image&mdash;when you have three or more closely related links on a topic.

***Did you know?*** Analyze the number of impressions and clicks and clickthru rate for each best bet on the [Monthly Reports](/manual/monthly-reports.html) page. Use the data to inform your titles, descriptions, and keywords and your decision to deactivate or delete an entry.

***Did you know?*** Use the color coding in the table on this page to see a best bet's status. Entries with green background shading are active. They're shown to searchers on your site. Entries with yellow background shading aren't shown to searchers because they're inactive, expired (by the publish end date), or both.