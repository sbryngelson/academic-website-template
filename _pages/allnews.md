---
title: "News"
layout: textlay
sitemap: false
permalink: /allnews.html
---

## News

<div class="jumbotron">
{% for article in site.data.news %}
<div style="text-align: justify;">
  <span style="color:#00bc8c; font-weight:600;">
      {{ article.date }}
    </span>: {{ article.headline }}
</div>
{% endfor %}

</div>
