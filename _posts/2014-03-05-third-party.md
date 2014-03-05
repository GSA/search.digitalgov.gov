---
layout: post
title: How to Add JavaScript for Your Third Party Web Services
category: manual
tags: how-to analytics third-party google-analytics foresee DAP
---

[DigitalGov Search](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Analytics > 3rd Party Tracking

Do you want your search results page to run web services such as 4Q, AddThis, Foresee, Google Analytics, Omniture, Siteimprove, or WebTrends?

Input the JavaScript code you'd like to call from your search results page. Click submit to send us your request. We'll input your code for you and send you an email to confirm that we've done it.

Some tips for commonly used third party web services follow.

## Google Analytics Tip

In your Google Analytics JavaScript, be sure to set your domain if you've requested <a href="/manual/cname.html">domain masking</a> and you want to include your search subdomain (e.g., search.commerce.gov) with your main domain (e.g., commerce.gov).

    _gaq.push(['_setDomainName', 'commerce.gov']);

For more information, read Google's tip, [Tracking Multiple Domains](https://developers.google.com/analytics/devguides/collection/gajs/gaTrackingSite).

The code you submit should look something like one of the following two scripts.

### Google Analytics Code (Older Format)

     <script type="text/javascript">
     var _gaq = _gaq || []; 
     _gaq.push(['_setAccount', 'UA-########-1']); 
     _gaq.push(['_trackPageview']);
     
     (function() { 
     var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; 
     ga.src = ('https:' == document.location.protocol ? 'https://ssl'; : 'http://www') +      '.google-analytics.com/ga.js'; 
     var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); 
     })();
     
     </script>

### Google Analytics Code (Newer Format)

    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

## Digital Analytics Program Tip

Does your federal agency participate in the [Digital Analytics Program](http://www.digitalgov.gov/services/dap/) (DAP)?  You don't need to do anything. We're already fully integrated with DAP.

## ForeSee Tip

Coordinate with your ForeSee representative and DigitalGov Search to implement your customer satisfaction survey on your results page. The four general steps follow.

1. Email us at <search@support.digitalgov.gov> to <a href="/manual/cname.html">set up a CNAME</a> for search.youragency.gov.

1. Update the files path in your Foresee code to use an absolute path instead of a relative path. 

    **Find =>** 'files': '/fsrscripts/',  

    **and replace it with =>** 'files': '//www.youragency.gov/fsrscripts/',  

    *(Or, find => 'files': '/foresee/', and replace it with => 'files': '//www.youragency/foresee/',)*

    in the following five files.

    * foresee-trigger.js  
    * foresee-tracker.js  
    * foresee-alive.js  
    * foresee-qualifier.js  
    * foresee-test.js

1. Submit your foresee-trigger.js via our Admin Center. It should look something like the following.

          <script type="text/javascript" src="http://www.youragency.gov/library/foresee/foresee-trigger.js"></script>

1. We'll send you an email to confirm that we've set up both your CNAME and added the script for your foresee-trigger.js file.