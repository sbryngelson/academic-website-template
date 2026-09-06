---
title: "Teaching"
layout: page
permalink: /teaching/
---

# Teaching

{% if site.data.teaching.size > 0 %}
<div class="section-card" markdown="0">
<ul class="teaching-list">
{% for course in site.data.teaching %}
<li>
<strong>{{ course.course }}</strong>{% if course.title %}: {{ course.title }}{% endif %}{% if course.term %} ({{ course.term }}){% endif %}{% if course.role %}, {{ course.role }}{% endif %}{% if course.url %} &middot; <a href="{{ course.url }}">Link</a>{% endif %}
{% if course.description %}<br><span class="text-muted">{{ course.description }}</span>{% endif %}
</li>
{% endfor %}
</ul>
</div>
{% else %}
<p class="text-muted">No courses listed yet. Add entries to <code>_data/teaching.yml</code>.</p>
{% endif %}
