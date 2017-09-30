---
layout: post
title: Preparing Your Site for HTTPS
category: manual
tags: help-manual https
---


[OMB memo M-15-13](https://https.cio.gov/){% external_link %} requires all publicly available federal websites and web services to [implement HTTPS](https://www.digitalgov.gov/2015/07/21/an-introduction-to-https-by-18f-and-digitalgov-university/){% external_link %} by December 31, 2016.

Below is a checklist of action items that should be completed in order for your search site to function as expected in HTTPS.

## 1. The Admin Center

Update all URLs that are listed in the Search Admin Center for each of your search configurations. *You will need to update the links for all of your search configurations.*

### Everyone:

**Dashboard:**

* **Settings:** Update your Homepage URL.

**Analytics:**

* **3rd Party Tracking:** If you are using [3rd party tracking code](/manual/third-party.html) that is HTTP protocol-specific, you will need to submit updated code.

**Content:**

* **Content Overview:** No action needed. The URL that we scan for social media accounts is synced with the homepage you have listed in the Dashboard section.
* **Domains:** No action needed, as this list isn’t protocol-specific.
* **Collections:** Update all URL paths in your collections; if you have mixed collections, leave any HTTP sites as-is.
* **Best Bets (Text and Graphics):** Throughout December 2016, we are doing bulk updates of Best Bet URLs in our system. If your site is serving content over HTTPS, we will update the URLs for your Best Bets. We suggest doing a spotcheck to confirm that all Best Bets have been updated. If you need a bulk update done after December, please [email us](mailto:search@support.digitalgov.gov).
* **Routed Queries:** Update routed query URLs.
* **RSS feeds:** Throughout December 2016, we are doing bulk updates of RSS feed URLs in our system. If your site is serving content over HTTPS, we will update the indexed URLs for your RSS feeds. We suggest doing a spotcheck to confirm that all feeds have been updated. Note: check to make sure that the URLs listed *within* the RSS feed are also HTTPS. If you need a bulk update done after December, please [email us](mailto:search@support.digitalgov.gov).

**Display:**

* **Image Assets:** Update the Favicon URL.
* **Header & Footer:** Update header and footer links.
* **No Results Page:** Update alternative links.


### Only those using `Domains > Advanced` features:

* **Supplemental Feed:** Throughout December 2016, we are doing bulk updates of RSS feed URLs in our system. If your site is serving content over HTTPS, we will update the indexed URLs for your RSS feeds. We suggest doing a spotcheck to confirm that all feeds have been updated. Note: check to make sure that the URLs listed *within* the RSS feed are also HTTPS. If you need a bulk update done after December, please [email us](mailto:search@support.digitalgov.gov).
* **Supplemental URLs:** Throughout December 2016, we are doing bulk updates of supplemental URLs in our system. If your site is serving content over HTTPS, we will update the supplemental URLs you have submitted. We suggest doing a spotcheck to confirm that all URLs have been updated. If you need a bulk update done after December, please [email us](mailto:search@support.digitalgov.gov).
* **Filter URLs:** Update filtered URLs.


## 2. Masked Domains

If your site uses [domain masking](/manual/cname.html): [contact our team](mailto:search@support.digitalgov.gov) to be added to our SSL certificate. While this step doesn't apply to everyone, it does need to be done before step 3.


## 3. Form Code Action on Your Website

Update your form code action: An `s` must be added to your site’s form action in order for the request to be made over HTTPS, and for the results page to be served over HTTPS. Example:

```<form accept-charset="UTF-8" action="https://search.usa.gov/search" id="search_form" method="get">```

## 4. Commercial Search Engines

Notify Google and Bing about the change; Google and Bing treat a migration from HTTP to HTTPS as a site move. 

* Google has a step-by-step guide, [Move a Site with URL changes](https://support.google.com/webmasters/answer/6033049){% external_link %}. 
* For Bing, review [How to Use the Site Move tool](https://www.bing.com/webmaster/help/how-to-use-the-site-move-tool-bb8f5112){% external_link %}.

Additional SEO best practices:

* Update your XML sitemap with HTTPS URLs.
* Use `rel canonical` to [declare HTTPS the preferred version](https://support.google.com/webmasters/answer/139066?hl=en#https){% external_link %}.
* Update internal website links.
* Update links to your website from social media and other platforms managed by your agency.


----

***Additional Information:*** 

* Read more about the [HTTPS-Only Standard](https://https.cio.gov/){% external_link %} from the Federal CIO Council.
* View a [SEO Checklist](https://docs.google.com/spreadsheets/d/1XB26X_wFoBBlQEqecj7HB79hQ7DTLIPo97SS5irwsK8/edit#gid=1975121463) {% external_link %} created by Aleyda Solís.

