---
title: "News"
layout: textlay
sitemap: false
permalink: /allnews.html
---

## News

{% for article in site.data.news %}

<div class="row" style="margin-bottom: 40px; padding-bottom: 30px; border-bottom: 1px solid #eee;">

<h3>{{ article.title }}</h3>
<p style="color: #666; font-style: italic; margin-bottom: 15px;">{{ article.date }}</p>

<div class="col-sm-8">
<p style="text-align: justify;">{{ article.content }}</p>

{% if article.links %}
<div style="margin-top: 20px;">
<h5>Related Links:</h5>
<ul>
{% for link in article.links %}
<li><a href="{{ link.url }}" target="_blank">{{ link.text }}</a></li>
{% endfor %}
</ul>
</div>
{% endif %}

</div>

{% if article.image %}
<div class="col-sm-4">
<img src="{{site.url}}{{site.baseurl}}/images/news/{{ article.image }}" class="img-responsive" style="width: 100%; height: auto;" />
</div>
{% endif %}

</div>

{% endfor %}
