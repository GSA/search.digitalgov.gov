---
layout: post
title: How to Add JavaScript for Your Third-party Web Services
category: manual
tags: help-manual analytics third-party google-analytics foresee DAP
---

[Search.gov Home](/index.html) > [Admin Center](https://search.usa.gov/sites/) > YourSite > Analytics > 3rd Party Tracking

Do you want your search results page to run third-party web services such as Foresee, Google Analytics, Omniture, Siteimprove, or WebTrends?

Input the JavaScript code you'd like to call from your search results page. Click submit to send us your request. We'll input your code for you and send you an email to confirm that we've done it.

Some tips for commonly used third-party web services follow.

***Note***: We do not currently support Google Tag Manager. You will need to submit all of the scripts you are managing in your Google Tag Manager setup.

## Google Analytics Tip

Within your Google Analytics account, select the option, *Do Track Site Search*. Set the query parameter as *query*. For more information, read Google's tip, [Set Up and Configure Site Search](https://support.google.com/analytics/answer/1012264?hl=en&ref_topic=1031951){% external_link %}.

Additionally, if you've requested [domain masking](cname.html) and you want to include the analytics for your *search.agency.gov* subdomain with your main *agency.gov* domain, you'll need to set your domain in your Google Analytics JavaScript by including `_gaq.push(['_setDomainName', 'agency.gov']);`.

For more information, read Google's tip, [Tracking Multiple Domains](https://developers.google.com/analytics/devguides/collection/gajs/gaTrackingSite){% external_link %}.

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

     <script type="text/javascript">
     (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
     </script>
     
## Digital Analytics Program Tip

Does your federal agency participate in the [Digital Analytics Program](http://www.digitalgov.gov/services/dap/) (DAP)?  You don't need to do anything. We're already fully integrated with DAP.

## ForeSee Tip

Coordinate with your ForeSee representative and the Search.gov team to implement your customer satisfaction survey on your results page. The four general steps follow.

1. Email us at <search@support.digitalgov.gov> to [set up a CNAME](cname.html) for search.youragency.gov.

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

1. Submit your foresee-trigger.js via our Admin Center. It should look something like the following script. `<script type="text/javascript" src="//www.youragency.gov/library/foresee/foresee-trigger.js"></script>`

1. We'll send you an email to confirm that we've set up both your CNAME and added the script for your foresee-trigger.js file.

---

***Did you know?*** We use Google Analytics Web analytics software&mdash;our own tag plus the [Digital Analytics Program](http://www.digitalgov.gov/services/dap/) tag&mdash;by default. Email us at <search@support.digitalgov.gov> if you'd like to opt out. Learn more about our [site policies](http://www.digitalgov.gov/about/policies/) and [terms of service](../tos.html).
