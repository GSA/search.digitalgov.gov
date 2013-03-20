---
layout: post
title: "December 2011 Release Notes"
tags: releases 
---
<p>We divide our work into three categories.</p>
<ol><li>Features—Things you actually notice.</li>
<li>Chores—Back-end improvements that you don’t notice.</li>
<li>Bugs—Fixes to any code issues that may arise.</li>
</ol><p><strong>Features</strong></p>
<p><em>Features for Searchers</em></p>
<ul><li>Searchers don&#8217;t see duplicate results from Add URLs.</li>
<li>Spanish searchers see stemmed equivalents.</li>
<li>Searchers on USA.gov see FAQ GovBox higher in results.</li>
</ul><p><em>Features for Agency Customers</em></p>
<ul><li>Customers can choose from predefined themes.</li>
<li>Customers see a a Sitemap box on the Sitemaps page.</li>
<li>Customers have a Discovery Tag for USASearch to proactively discover and index content from their websites.</li>
<li>Customers can edit Header and Footer CSS.</li>
<li>Customers can set their locale to Spanish during sign up.</li>
<li>Customers see an updated left nav.</li>
</ul><p><strong>Chores</strong></p>
<ul><li>Remove &#8220;locale&#8221; parameter from all models, analytics, etc.</li>
</ul><p><strong>Bugs<br/></strong></p>
<ul><li>Add Spanish translations for Popular Links, no RSS results, and document results.</li>
<li>Remove extra whitespace when displaying snippets.</li>
<li>Fix buggy bold highlighting in type-ahead searches in API.</li>
<li>Remove 0-100 scale from sparklines in search module stats and let it autoscale.</li>
<li>Increase length of URL and title field on indexed documents.</li>
<li>Ignore invalid IndexedDocument URL&#8217;s before they get queued for fetching/indexing</li>
<li>Ignore HTTPS URLS for on-demand index.</li>
<li>Fix duplicate results due to domain and protocol variations.</li>
<li>Handle 503 errors from RSS feeds more gracefully.</li>
<li>Fix error logging around duplicate indexed docs pages.</li>
<li>Fix deduping regression to still match exact URLs.</li>
</ul>
