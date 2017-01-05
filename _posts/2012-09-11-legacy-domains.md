---
layout: post
title: Six legacy domains are expiring
category: blog
tags: get-code about-us
---

As part of the federal [.gov web reform](https://www.usa.gov/WebReform.shtml) project, we're eliminating six of our legacy domains. Going forward, our only supported domain is search.usa.gov (or search.yoursite.gov, if you've requested [DNS masking](/manual/cname.html)).

What do you need to do? If your URL starts with any of the following six legacy domains, you must update your HTML form code.

1. firstgovsearch.gov
1. searchusa.gov
1. usasearch.gov
1. (Spanish) buscador.gov
1. (Spanish) buscadorusa.gov
1. (Spanish) usabuscador.gov

Specifically, you have to update the action of your [form code](/manual/code.html) to call search.usa.gov (or search.yoursite.gov).

`<form method="get" action="https://search.usa.gov/search">`

Note that, if you don't update your form code, your search results page will no longer work.
