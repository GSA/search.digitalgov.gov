---
layout: post
title: Setting Up Analytics Alerts
category: manual
tags: help-manual analytics
---

[Search.gov Home](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Analytics > Analytics Alerts

Analytics Alerts let you receive email alerts when your site visitors are getting no results for a particular query or when a query is getting a [low click-through rate](#low-query-click-through-rate). ***Note:*** the Low Click-through Rate alert is not currently functional. We apologize for any inconvience this may cause.

## No Results

Set up this alert to be notified if specific queries are frequently searched for but are returning no results. Help on specific fields follows, and there is an [example](#no-results-example) below.

**Name**

Enter a name for your alert. It will be the subject line of your alert email. The name of your alert must be unique across our entire search alert system, so if you see an error message, please modify the name.

**Check interval**

Enter the frequency at which you’d like the system to check for queries with no results. Use `m`, `h`, `d`, or `w` to specify the minutes/hours/days/weeks you’d like between checks.

**Minimum number of queries**

Enter the minimum number of times, over the time window, that a given query must be entered to trigger the alert. 

**Time window for each check**

Enter the amount of time the system should look back through for each check. Use `m`, `h`, `d`, or `w` to specify minutes/hours/days/weeks.

**Time between alerts**

Enter the minimum period of time between successive email messages.

**Ignored query terms**

Enter any query terms that you don’t want included in the alert, separated by commas. 

### No Results Example:

In this example, the alert system will check every 30 minutes to see if any query has been entered at least 50 times over the past 12 hours and yielded no results. The system will send an alert at most once per day if there are queries that fit this criteria, and it will not include the query ‘panda’ in the alert.

![No Results Analytics Alert Example](https://search.digitalgov.gov/img/No-Results-Screenshot.png "No Results Analytics Alert Example"){:height="95%" width="95%"}

## Low Query Click-through Rate

***Note:*** the Low Click-through Rate alert is not currently functional. We apologize for any inconvience this may cause.

Set up this alert to be notified if the results page for a query with significant traffic is not getting many clicks. If the query resulted in a click less than 20% of the time, it is considered to have a low click-through rate (CTR); however, you are able to set any percentage threshold for your alert emails. Help on specific fields follows, and there is an [example](#low-ctr-example) below.

**Name**

Enter a name for your alert. It will be the subject line of your email. The name of your alert must be unique across our entire search alert system, so if you see an error message, please modify the name.

**Check interval**

Enter the frequency at which you’d like the system to check for queries with a low CTR. Use `m`, `h`, `d`, or `w` to specify the minutes/hours/days/weeks you’d like between checks.

**Minimum search activity level (queries + clicks)**

Enter the minimum number of times, over the time window, that a given query must have search activity (queries plus clicks) to trigger the low query CTR alert. Because we’re not able to differentiate between query activity and click activity, you may want to pad this number a little. However, since these queries are not getting a lot of clicks, you don’t want to pad it too much.

**Maximum CTR for alert**

Enter the maximum click-through rate that will trigger an alert, expressed as a percentage. You will receive an alert for a query that has a CTR equal to or lower than that percentage during the given time window.

**Time window for each check**

Enter the amount of time the system should look back through for each check. Use `m`, `h`, `d`, or `w` to specify minutes/hours/days/weeks.

**Time between alerts**

Enter the minimum period of time between successive email messages.

**Ignored query terms**

Enter any query terms that you don’t want included in the alert, separated by commas. 

### Low CTR Example:

In this example, the alert system will check every 30 minutes for a query that has had search activity (queries plus clicks) at least 100 times over the past 12 hours and has a CTR 15% or lower. The system will send an alert at most once per day if there are queries that fit these criteria, and it will not include queries for ‘lion’ in the alert.

![Low CTR Analytics Alert Example](https://search.digitalgov.gov/img/Low-CTR-Screenshot.png "Low CTR Analytics Alert Example"){:height="95%" width="95%"}

---

***Troubleshooting tip:*** Don’t forget to hit ‘add’ in the upper right corner!

***Troubleshooting tip:*** Analytics alerts are only sent to the Search.gov user who set up the alert. 
