---
layout: post
title: How to Analyze Your Monthly Reports
category: manual
tags: help-manual analytics queries clicks
---

[DigitalGov Search](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Analytics > Monthly Reports

The monthly report gives a bird's-eye view of the number of [queries](/manual/queries.html) and [clicks](/manual/clicks.html) each month.

Data are shown for the present month-to-date by default. You can change the time period by selecting a different month or year and re-generating the report.

Data are available in the Admin Center from August 2014.

## Monthly Usage Stats

Data for the total number of queries and clicks. Use this report to find and analyze the so-called [short head](http://www.searchtools.com/analysis/long-tail.html){% external_link %} of your most popular search queries and clicks, which are typically the same as your site's [top tasks](http://www.usability.gov/tags/task-analysis/).

### Queries with No Results

A list of queries that returned no results. Sometimes searchers look for information on the wrong website, and sometimes they use different words than what are used on the page, and so they get no results from the search index. Use this list of Queries with No Results to help searchers get to the information they're looking for. You can set up Best Bets ([Text](/manual/best-bets-text.html) or [Graphics](/manual/best-bets-graphics.html)), or a [Routed Query](/manual/routed-queries.html). You can also [customize the No Results message](/manual/no-results.html) displayed on your results page.

## Impressions and Clicks by Module

Detailed data for the total number of impressions and clicks and your clickthru rate (CTR) are presented for each "module" on the search results page. We also provide the average CTR across all DigitalGov Search customers so you can see how your rate compares to the average rate. The data in the table is sorted in descending order from the most to least number of clicks.

Use this report to inform which [modules you opt to display](/manual/display-overview.html).

***Drill down into best bets.*** Select the option to drill down into your [Best Bets:Text](/manual/best-bets-text.html) or [Best Bets: Graphics](/manual/best-bets-graphics.html) to see the number of impressions, number of clicks, and CTR for each best bet. The data in the table is sorted in descending order from the highest to lowest CTR. Review and edit best bets as needed. Focus on those with a high number of impressions and low CTR to make the biggest impact on searchers' experience (and on your overall CTR). Select drill down again to see a pie chart of the search terms that led to an impression on each best bet.

## Download Top Queries

View a detailed report of the number of times searchers have input specific terms and phrases by clicking on the CSV (comma-separated values) link to download the list as a text file. Once you've downloaded the CSV file, you can easily [import it  into Excel](http://office.microsoft.com/en-us/excel-help/import-or-export-text-txt-or-csv-files-HP010342598.aspx){% external_link %} or another speadsheet program to analyze the data.

The CSV file contains three columns: (1) query, (2) raw count, and (3) IP-deduped.

Read [Understanding Your Users' Needs By Analyzing Search Terms](https://www.digitalgov.gov/2013/10/24/understanding-your-users-needs-by-analyzing-search-terms/) for tips on how to create a semi-automated report for analyzing the data in this CSV file on a regular basis.

## Definitions

All data presented on this page (and other pages in the Admin Center) are IP-deduped to exclude bots and other noise in an attempt to accurately represent searchers' intent on your site. Some definitions follow.

**[Queries](/manual/queries.html):** Number of times a search query (that is, a word or string of words) was entered in the search box by a unique searcher.

**[Clicks](/manual/clicks.html).** Number of times a searcher clicked on one of your pages within the search results for a particular query.

**Impressions:** Number of times a module is displayed, whether it is clicked on or not. Not all modules are displayed for all queries. Each time a module is displayed it is counted as one impression.

**Clickthru Rate (CTR):** The rate (expressed in a percentage) at which searchers click on a module. This rate is calculated by dividing the total number of clicks by the total number of impressions. CTR is useful to measure the performance of specific campaigns, such as [best bets](/manual/best-bets-text.html) for seasonal events.

**Raw count:** Total number of times the query was submitted. The raw count is provided in the downloadable CSV files only.

**IP-deduped count:** Total number of times the query was submitted by any one IP address. This excludes bots and other traffic that send in a query multiple times from one IP address. It is often a more accurate representation of "real," human traffic.

---

***Did you know?*** On the first of each month, we email you a report with data on the previous month's queries, clicks, and top search terms.

***Did you know?*** The [Site Overview](/manual/site-overview.html) provides a snapshot of what has been happening on your site in the past day or so.