---
title: "Teaching"
layout: gridlay
sitemap: false
permalink: /teaching/
---

## Teaching

{% for course in site.data.teaching %}
<div class="section-card">

<div style="display: flex; justify-content: space-between; align-items: flex-start; flex-wrap: wrap; gap: var(--space-2);">
<div>
<h3 style="margin: 0 0 var(--space-1) 0;">{{ course.name }}</h3>
<p style="margin: 0; font-size: 0.9rem; color: var(--text-secondary);">{{ course.code }}</p>
</div>
<div style="display: flex; flex-wrap: wrap; gap: var(--space-2);">
{% for sem in course.semesters %}
<span style="background: var(--tag-bg, #f0f4ff); color: var(--tag-color, #3b5bdb); border-radius: 999px; padding: 2px 12px; font-size: 0.82rem; white-space: nowrap;">{{ sem }}</span>
{% endfor %}
</div>
</div>

{% if course.description %}
<p style="margin: var(--space-4) 0 var(--space-3) 0; font-size: 0.95rem; line-height: 1.6;">{{ course.description }}</p>
{% endif %}

<div style="display: flex; flex-wrap: wrap; gap: var(--space-4); font-size: 0.9rem;">
{% if course.syllabus and course.syllabus != "" %}
<a href="{{ site.url }}{{ site.baseurl }}/{{ course.syllabus }}" target="_blank" style="display: inline-flex; align-items: center; gap: 6px;">
  <i class="fa-solid fa-file-pdf"></i> Syllabus
</a>
{% endif %}
{% if course.textbook and course.textbook.url != "" %}
<a href="{{ course.textbook.url }}" target="_blank" style="display: inline-flex; align-items: center; gap: 6px;">
  <i class="fa-solid fa-book"></i> {{ course.textbook.title | default: "Textbook" }}
</a>
{% endif %}
{% for project in course.projects %}
<a href="{{ project.url }}" target="_blank" style="display: inline-flex; align-items: center; gap: 6px;">
  <i class="fa-solid fa-star"></i> {{ project.title }}
</a>
{% endfor %}
</div>

</div>
{% endfor %}
