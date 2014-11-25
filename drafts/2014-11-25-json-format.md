---
layout: post
title: Providing Us Your Content in JSON
category: blog
tags: how-to manage-content json content-api api
---

While we can work with you on the formatting, we wanted to provide some documentation of what JSON we would like to receive .

# Fields

At a minimum, we would require the following fields:

title: title of content
url: url of the document
summary: summary of the document
description: full content body
updated_at: change date of document in YYYY-MM-DD-HH if possible

# Reverse Chronological Order

We ask that the you display the results in reverse chronological order. This will allow us to discover your new content easily.

# Pagination

We recommend of 100 results per page, and we will handle navigating through the content.

# Update Cycle

Set to 24 hours. We can update more or less frequently as desired.

# Example Endpoint

URL: [http://yourdomain.com/content.json](http://yourdomain.com/content.json)

    {
      "total": 99,
       "offset": 10,
       "next_url": "http://yourdomain.com/content.json?offset=10&limit=2",
    "items": [
      {
      "title": "title 1",
      "url": "http://yourdomain.com/news/1",
      "summary": "news summary",
      "content": "news 1 content without template",
      "updated_at": "2014-10-30T15:39:37-04:00"
    },
    {
      "title": "title 2",
      "url": "http://yourdomain.com/news/2",
      "summary": "news summary",
      "content": "news 2 content without template",
      "updated_at": "2014-10-29T12:19:17-04:00"
       }
      ]
     }
