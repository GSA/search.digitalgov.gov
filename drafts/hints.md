---
layout: default
---
# Hints

Syntax                                                                                 | Output
:------------------------------------------------------------------------------------- | :-----
{% raw %}`{% hint document_collection.name %}`{% endraw %} &nbsp;&nbsp;                | {% hint document_collection.name %}
{% raw %}`{% hint document_collection.url_prefixes.prefix %}`{% endraw %} &nbsp;&nbsp; | {% hint document_collection.url_prefixes.prefix %}
{% raw %}`{% hint site_domain.domain %}`{% endraw %} &nbsp;&nbsp;                      | {% hint site_domain.domain %}
{% raw %}`{% hint user.contact_name %}`{% endraw %} &nbsp;&nbsp;                       | {% hint user.contact_name %}
{% raw %}`{% hint user.email %}`{% endraw %} &nbsp;&nbsp;                              | {% hint user.email %}
