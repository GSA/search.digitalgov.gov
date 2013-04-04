---
permalink: /manual/third-party.html
layout: post
title: "How to Add JavaScript for Your Third Party Web Services"
tags: third-party how-to
---
[USASearch](http://usasearch.howto.gov) > [Admin Center](http://search.usa.gov/affiliates/home) > YourSite > 3rd Party Tracking

Do you want your search results page to run web services such as 4Q, AddThis, Foresee, Google Analytics, Omniture, or WebTrends?

Log in to the [Admin Center](http://search.usa.gov/affiliates/home) and select the option, Third Party Tracking. Input the JavaScript code you'd like to call from your search results page. Click submit to send us your request. We'll input your code for you and send you an email to confirm that we've done it.

---
***Google Analytics tip:*** In your Google Analytics JavaScript, be sure to set your domain if you've requested <a href="/manual/get-code.html#cname">domain masking</a> and you want to include your search subdomain (e.g., search.commerce.gov) with your main domain (e.g., commerce.gov).

    _gaq.push(['_setDomainName', 'commerce.gov']);

For more information, read Google's tip, [Tracking Multiple Domains](https://developers.google.com/analytics/devguides/collection/gajs/gaTrackingSite).

***ForeSee tip:*** Coordinate with your ForeSee representative and USASearch to implement your customer satisfaction survey on your results page. The four general steps follow.

1. Email us at <USASearch@gsa.gov> to <a href="/manual/get-code.html#cname">set up a CNAME</a> for search.{yourdomain}.gov.
2. Update the files path in your Foresee code to use an absolute path instead of a relative path. 

  Find =&gt; 'files': '/fsrscripts/',
  
  and replace it with =&gt; 'files': '//{yourdomain}/fsrscripts/',
  
  in the following five files.

  a. foresee-trigger.js  
  b. foresee-tracker.js  
  c. foresee-alive.js  
  d. foresee-qualifier.js  
  e. foresee-test.js

3. Ask ForeSee to send USASearch your foresee-trigger.js file.
4. USASearch will send you an email to confirm that we've set up your CNAME and installed your foresee-trigger.js file.