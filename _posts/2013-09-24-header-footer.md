---
permalink: /sites/manual/header-footer.html
layout: post
title: "How to Customize the Header and Footer of Your Results Page"
tags: how-to manage-display sidebar govbox related-sites
---
[USASearch](http://usasearch.howto.gov) > [Admin Center](https://search.usa.gov/sites) > YourSite > Manage Display > Header & Footer

To customize the header on your results page, we'll automatically use:

1. The logo you provide on the [Image Assets](/sites/manual/display-images.html) page. (Or, if you don't provide a logo, we'll use the site name you provide on the [Settings](/sites/manual/settings.html) page.)
2. The homepage URL you provide on the [Settings](/sites/manual/settings.html) page.

You can see the custom header and mobile header we've automatically created for you on the [Preview](/sites/manual/preview.html) page.

Additionally, you can further customize your header or footer using the options below.

## Option 1. Add Header or Footer Links

Fill out the titles and URLs if you'd like to add navigation "tabs" to your header and footer. Use the icon with three horizontal lines on the left to change the order.

See, for example, the options for Home, Business Tools, Business Education, Press Room, etc., in the header on the [Minority Business Development Agency's search results page](http://search.usa.gov/search?query=contracts&affiliate=MBDA).

## Option 2. Use CSS and HTML

Use this option to more closely replicate the exact header and footer on your website.

Switch to Advanced Mode. 

In the first box, enter CSS to customize the header and footer of your search results page. We'll run a validation check to ensure your CSS is valid.

In the second box, enter HTML to customize the header of your search results page. In the third box, enter HTML to customize the footer of your search results page. Be sure to enter [absolute hyperlinks](http://webdesign.about.com/od/beginningtutorials/a/aa040502a.htm) ![External link](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/external_link.gif), not relative links.

We'll run a validation check to ensure that no JavaScript is included in your HTML code. We'll also check to ensure no CSS style or link elements are included. To include CSS, specify inline CSS within an opening tag.

### Invalid CSS

    <html>
    <body>
    <style> h1 { color: blue } </style>
    <link href="http://www.yoursite.gov/custom.css" type="text/css" />
    </body>
    </html>

### Valid CSS

    <h1 style="color: blue;">Your Heading</h1>

---

***Troubleshooting tip:*** You can validate your HTML markup at <http://validator.w3.org/nu/> ![External link](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/external_link.gif). On the W3C page, select HTML 4.01 Strict from the Parser drop-down box.

***Troubleshooting tip:*** You can implement a drop-down menu using CSS (and without using JavaScript). For more information, read tips from *A List Apart* on [drop-down menus and horizontal style](http://alistapart.com/article/horizdropdowns) ![External link](https://9fddeb862c037f6d2190-f1564c64756a8cfee25b6b19953b1d23.ssl.cf2.rackcdn.com/external_link.gif).

***Did you know?*** We use device detection to show mobile-friendly search results on mobile phones. (Searchers using tablets and desktop computers see the full, classic header as you set it up above.) We'll automatically use the mobile logo you provide on the [Image Assets](/sites/manual/display-images.html) page. The logo must be less than 56 KB. We recommend it be no wider than 320 pixels. Or, if you don't provide a logo, we'll use the site name you provide on the [Settings](/sites/manual/settings.html) page. 

***Did you know?*** We offer results through our [Search Data API](/sites/manual/api.html), if you'd like to create mash-ups or have complete control of the look and feel of your search results pages. You can access the API by clicking on the Activate Search option in the left-hand menu in the Admin Center.