---
layout: post
title: Displaying Type-ahead Suggestions on Your Agency's Website
category: manual
tags: api activate-search autocomplete
---

**_Note_**: this information is for customers who wish to display type-ahead (autocomplete) suggestions on their agency's website. If you are only looking to turn on type-ahead suggestions on your search results page, please review the instructions on our [Display Overview](/manual/display-overview.html#modules) page.

There are two ways to get type-ahead suggestions to appear on your agency's website.

## JavaScript Snippet

We offer a JavaScript snippet that is placed on your pages before the closing `</body>` tag. 

You must be a Search.gov customer to use this feature. Full instructions and code can be found under [Admin Center](https://search.usa.gov/sites) > YourSite > Activate Search > Code Snippets.

The code will look similar to:

    <script type="text/javascript">
    //<![CDATA[
          var usasearch_config = { siteHandle:"YourSiteHandle" };
    
          var script = document.createElement("script");
          script.type = "text/javascript";
          script.src = "//search.usa.gov/javascripts/remote.loader.js";
          document.getElementsByTagName("head")[0].appendChild(script);
    
    //]]>
    </script>


## Type-ahead API 

The Type-ahead API exposes your site's type-ahead suggestions. Calling the API directly alllows you to show type-ahead suggestions without adding the JavaScript code.

This API is available for use on official government websites only. You must be a Search.gov customer to access the instructions. [Sign in](https://search.usa.gov/sites) is required. 

Keys and instructions can be found under [Admin Center](https://search.usa.gov/sites) > YourSite > Activate Search > Type-ahead API Instructions.

--- 
***Troubleshooting:*** Suggestions are derived from the searches performed on your website. For additional details, please review the Type-ahead API section in the Search [Admin Center](https://search.usa.gov/sites).
