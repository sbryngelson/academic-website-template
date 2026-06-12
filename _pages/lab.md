---
title: "Lab"
layout: gridlay
sitemap: false
permalink: /lab/
---

## XRAI Lab

<div class="section-card">
<h3>About XRAI Lab</h3>
<p style="font-size: 0.95rem; line-height: 1.75; margin-bottom: var(--space-4);">
The <strong>XRAI Lab</strong> aims to advance the seamless integration of Extended Reality (XR), Artificial Intelligence (AI), and Robotics to create intelligent, interactive, and adaptive systems.
We focus on developing next-generation technologies that bridge physical and virtual worlds, enabling intuitive interaction, enhanced human capabilities, and collaborative autonomy.
</p>
<p style="font-size: 0.95rem; line-height: 1.75; margin: 0;">
Through interdisciplinary research, XRAI Lab seeks to redefine how intelligent machines are designed, experienced, and integrated into real-world applications, including manufacturing, education, and human-centered systems.
</p>
</div>

## Equipment

<div class="research-grid">
{% for item in site.data.equipment %}
<div class="research-card">
{% if item.image and item.image != "" %}
<img src="{{ site.url }}{{ site.baseurl }}/images/{{ item.image }}" class="research-thumb" alt="{{ item.name }}" loading="lazy">
{% else %}
<div class="research-thumb" style="background: var(--bg-secondary); display: flex; align-items: center; justify-content: center; height: 200px;">
  <i class="fa-solid fa-microchip" style="font-size: 3rem; color: var(--text-tertiary);"></i>
</div>
{% endif %}
<div class="research-body">
<p style="margin: 0 0 var(--space-1) 0; font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.08em; color: var(--text-tertiary);">{{ item.category }}</p>
<h4 class="research-title">{{ item.name }}</h4>
<p class="research-desc">{{ item.description }}</p>
</div>
</div>
{% endfor %}
</div>
