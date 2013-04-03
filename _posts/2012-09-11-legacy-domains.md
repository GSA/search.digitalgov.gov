---
layout: post
title: "Six legacy domains are expiring"
tags: get-code
---
<p><span>As part of the federal <a href="http://www.usa.gov/WebReform.shtml">.gov web reform</a> project, we&#8217;re eliminating six of our legacy domains. Going forward, our only supported domain is search.usa.gov (or search.yoursite.gov, if you&#8217;ve requested <a href="/blog/how-to-add-our-code-to-your-website#cname.html">DNS masking</a>).</span></p>
<p><span>What do you need to do? I</span><span>f your URL starts with any of the following six legacy domains, </span><span>you must update your HTML form code.</span><span></span></p>
<ol><li><span>firstgovsearch.gov</span></li>
<li><span>searchusa.gov</span></li>
<li><span>usasearch.gov</span></li>
<li><span>(Spanish) buscador.gov</span></li>
<li><span>(Spanish)  buscadorusa.gov</span></li>
<li><span>(Spanish)  usabuscador.gov</span></li>
</ol><p><span>Specifically, you have to update the action of your <a href="/blog/how-to-add-our-code-to-your-website.html">form </a></span><span><a href="/blog/how-to-add-our-code-to-your-website.html">code</a> to call search.usa.gov </span><span>(or search.yoursite.gov)</span><span>.</span></p>
<blockquote>
<p><span>&lt;form method=&#8221;get&#8221; action=&#8221;http://search.usa.gov/search&#8221;&gt;</span></p>
</blockquote>
<p><span></span><span>Note that, if you don&#8217;t update your form code, your search results </span><span>page will no longer work.</span></p>
