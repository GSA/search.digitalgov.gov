---
layout: post
title: "How to Add Our Code to Your Website"
tags: how-to get-code
---
<p>Visit our <a href="http://search.usa.gov/affiliates/home">Admin Center</a>, select your site, and click on the Get Code option in the left-hand menu. </p>
<p>Add the following two snippets of code to your website to &#8220;hook&#8221; together your website and our hosted search service. You can add this code to your individual web pages or to the template(s) in your content management system. </p>
<p><strong>1. Form Snippet</strong></p>
<p>Include the first snippet of code where the form for your search box appears. Your form should look something like this:</p>
<pre>&lt;form accept-charset="UTF-8" action="http://search.usa.gov/search" id="search_form" method="get"&gt;&lt;div style="margin:0;padding:0;display:inline"&gt;&lt;input name="utf8" type="hidden" value="&amp;#x2713;" /&gt;&lt;/div&gt;<br/>    &lt;input id="affiliate" name="affiliate" type="hidden" value="<span><strong>YourSiteHandle</strong></span>" /&gt;<br/>    &lt;label for="query"&gt;Enter Search Term(s):&lt;/label&gt;<br/>    &lt;input autocomplete="off" class="usagov-search-autocomplete" id="query" name="query" type="text" /&gt;<br/>    &lt;input name="commit" type="submit" value="Search" /&gt;<br/>&lt;/form&gt;</pre>
<p><strong>2. Javascript Snippet</strong></p>
<p>Include the second snippet of code before the closing &lt;/body&gt; tag. This tag enables type-ahead search and ensures we have complete and timely coverage of your content in our index. Your tag should look something like this:</p>
<pre>&lt;script type="text/javascript"&gt;
//&lt;![CDATA[
      var usasearch_config = { siteHandle:"<strong>YourSiteHandle</strong>" };
      var script = document.createElement("script");
      script.type = "text/javascript";
      script.src = "http://search.usa.gov/javascripts/remote.loader.js";
      document.getElementsByTagName("head")[0].appendChild(script);
//]]&gt;<br/>&lt;/script&gt;</pre>
<blockquote>
<div>
<p><em><strong>Troubleshooting tip:</strong></em> If your website is secured with https, you can add &#8216;s&#8217; to the two URLs above (i.e., <a href="https://search.usa.gov/search">https://search.usa.gov/search</a> and <a href="https://search.usa.gov/javascripts/remote.loader.js,">https://search.usa.gov/javascripts/remote.loader.js,</a> respectively) so that searchers don&#8217;t receive a security message in Internet Explorer.</p>
<p><span><em><strong>Did you know?</strong> </em>If you’re using Drupal, be sure to check out our </span><a href="http://drupal.org/project/USASearch">Drupal module</a><span>.</span></p>
<p><em><strong>Did you know?</strong> </em>We offer DNS masking, which allows you to show searchers your domain (instead of USA.gov). Follow these three steps to mask your domain.</p>
<ol><li><a href="mailto:usasearch@gsa.gov">E-mail us</a> your request us to mask your domain.</li>
<li>Create a CNAME in your DNS records for <em>search.yoursite.gov</em>. Point it to <em>search.usa.gov.edgekey.net.</em></li>
<li>When the setup is complete, change the code for your form action from <em>search.usa.gov</em> to <em>search.yoursite.gov</em>.</li>
</ol><p><em><strong>Did you know?</strong> </em>You can set up one site in your USASearch account that limits results to specific folders or subdomains by either:<br/><br/>(1) <a href="/blog/how-to-create-collections-within-our-index.html">Creating a collection</a>.<br/><br/>&lt;input type=&#8221;hidden&#8221; name=&#8221;dc&#8221; value=&#8221;###&#8221;&gt;. The value is the number for your collection ID, which is visible in the URL when you edit your collection in the Admin Center.</p>
<p><img class="img-polaroid" alt="image" src="http://f22818b4dfc10241d8a3-f1564c64756a8cfee25b6b19953b1d23.r31.cf2.rackcdn.com/tumblr_m2l30r5nfy1qid15q.png"/></p>
<p><br/>(2) Leaving your domain blank on the <a href="/blog/how-to-edit-your-domains.html">Domains</a> page and, instead, passing a hidden value for the domain in the search form code.</p>
<p>See, for example, <a href="http://www.ri.gov">RI.gov</a>, <a href="http://www.dmv.ri.gov/">DMV.RI.gov</a>, <a href="http://www.health.ri.gov/">Health.RI.gov</a>. On Health.RI.gov, the following hidden value is added to limit to only the health subdomain.</p>
<p>&lt;input type=&#8221;hidden&#8221; name=&#8221;site&#8221; value=&#8221;www.health.ri.gov&#8221; /&gt;</p>
</div>
</blockquote>
<p><a href="http://usasearch.howto.gov/">USASearch</a> &gt; <a href="http://search.usa.gov/affiliates/home">Admin Center</a> &gt; YourSite &gt; Get Code</p>
