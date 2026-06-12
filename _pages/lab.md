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

<div class="equipment-grid">
{% for item in site.data.equipment %}
<div class="equipment-card">
{% if item.image and item.image != "" %}
<img src="{{ site.url }}{{ site.baseurl }}/images/{{ item.image }}" class="equipment-thumb" alt="{{ item.name }}" loading="lazy">
{% else %}
<div class="equipment-thumb-placeholder"><i class="fa-solid fa-microchip"></i></div>
{% endif %}
<div class="equipment-body">
<p class="equipment-category">{{ item.category }}</p>
<h4 class="equipment-name">{{ item.name }}</h4>
<p class="equipment-desc">{{ item.description }}</p>
</div>
</div>
{% endfor %}
</div>
