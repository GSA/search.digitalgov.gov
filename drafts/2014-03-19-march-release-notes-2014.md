---
layout: post
title: March 2014 Release Notes
category: releases
tags: release-notes
---

## Highlighted Features

### Feature 1. We are very excited to have migrated from Solr to Elastic Search and gave a [presentation](http://search.digitalgov.gov/blog/search-big-data.html) on the topic.

Some of the tasks to complete this include, but is not limited to:

* Upgrade ES to 1.0.1 (Accepted)
* Remove migrated indexes from Solr (Accepted)
* Separate ES cluster into CHI and IAD (Accepted)
* Migrate Flickr photos from Solr to ES (Accepted)
* Prototype Logstash-based ingestion of search/click logs (Accepted)
* Migrate tweets from Solr to ES (Accepted)
* Remove remaining files/references to Solr from codebase (Accepted)

### Feature 2. We're continuing to go responsive module by module.

{% include features/2014-03-06-newserp-health-gb.md %}

We have valued your feedback and made your logo langer on desktop search. 
 
Please keep the feedback coming to our <mailto:search@support.digitalgov.gov>

### Feature 3. We now leverage Flickr image search by default. 

{% include features/2014-02-01-analytics-queries.md %}

[More on Flick image search](http://search.digitalgov.gov/manual/flickr.html)

### Feature 4. We are improving RSS intelligence.

{% include features/2014-03-13-rss-validation.md %}

And we only show unique URLs in our News GovBox. Previously, it was possible to have identical URLs appear.

## Chores

* We fixed our Travis builds (Accepted)
* We investigated if IE8 is o.k. using our new SERP 
* We routed traffic evenly between our two datacenters
* We fixed monthly/weekly CSV downloads 

## Fixes

* We fixed Best Bets Bulk Uploading dropping last two columns\
* Searchers sometimes got "stuck" on infinite scroll 
* Searchers lost their spot when they opted to see more 