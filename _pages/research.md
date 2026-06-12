---
title: "Research"
layout: gridlay
sitemap: false
permalink: /research/
---

## Research

{% assign sorted_research = site.data.research | sort: "end_date" | reverse %}
<div class="research-list">
{% for item in sorted_research %}
<div class="research-card-h">
<div class="research-card-h-img">
{% if item.image and item.image != "" %}
<img src="{{ site.url }}{{ site.baseurl }}/images/{{ item.image }}" alt="{{ item.title }}" loading="lazy">
{% else %}
<div class="research-card-h-img-placeholder"><i class="fa-solid fa-flask"></i></div>
{% endif %}
</div>
<div class="research-card-h-body">
<h3 class="research-card-h-title">{{ item.title }}</h3>
{% if item.start_date %}
<p class="research-duration">
<i class="fa-regular fa-calendar"></i>
{{ item.start_date }}{% if item.end_date %} &ndash; {{ item.end_date }}{% else %} &ndash; Present{% endif %}
</p>
{% endif %}
{% if item.keywords %}
<div class="research-card-h-keywords">
{% for kw in item.keywords %}<span class="research-kw">{{ kw }}</span>{% endfor %}
</div>
{% endif %}
<p class="research-card-h-abstract">{{ item.abstract }}</p>
{% assign has_link = false %}
{% if item.links.paper and item.links.paper != "" %}{% assign has_link = true %}{% endif %}
{% if item.links.webpage and item.links.webpage != "" %}{% assign has_link = true %}{% endif %}
{% if item.links.video and item.links.video != "" %}{% assign has_link = true %}{% endif %}
{% if item.links.bib and item.links.bib != "" %}{% assign has_link = true %}{% endif %}
{% if has_link %}
<div class="research-card-h-links">
{% if item.links.paper and item.links.paper != "" %}<a href="{{ item.links.paper }}" target="_blank" class="research-link"><i class="fa-regular fa-file-pdf"></i> Paper</a>{% endif %}
{% if item.links.webpage and item.links.webpage != "" %}<a href="{{ item.links.webpage }}" target="_blank" class="research-link"><i class="fa-solid fa-globe"></i> Webpage</a>{% endif %}
{% if item.links.video and item.links.video != "" %}<a href="{{ item.links.video }}" target="_blank" class="research-link"><i class="fa-brands fa-youtube"></i> Video</a>{% endif %}
{% if item.links.bib and item.links.bib != "" %}<a href="{{ item.links.bib }}" target="_blank" class="research-link"><i class="fa-solid fa-quote-right"></i> BibTeX</a>{% endif %}
</div>
{% endif %}
</div>
</div>
{% endfor %}
</div>
