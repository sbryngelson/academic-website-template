---
title: "News"
layout: textlay
sitemap: false
permalink: /allnews.html
---

## News

<div class="jumbotron">
{% for article in site.data.news %}
<div style="margin-bottom: 40px; padding-bottom: 30px; border-bottom: 1px solid #eee;">
  <h3>{{ article.title }}</h3>
  <p style="color: #666; font-style: italic; margin-bottom: 15px;">{{ article.date }}</p>
  <p>{{ article.content }}</p>
  {% if article.image %}
  <img src="{{site.url}}{{site.baseurl}}/images/news/{{ article.image }}" class="img-responsive" style="max-width: 400px; display: block; margin-left: auto; margin-right: auto;" />
  {% endif %}
</div>
{% endfor %}

</div>
