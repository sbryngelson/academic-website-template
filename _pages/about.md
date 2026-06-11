---
title: "About"
layout: gridlay
sitemap: false
permalink: /about/
---

## About

<div class="section-card">
<div class="pi-card">
<img src="{{ site.url }}{{ site.baseurl }}/images/{{ site.photo }}" class="pi-photo" alt="{{ site.name }}" loading="lazy">
<div>
<h3 class="pi-name">{{ site.name }}</h3>
<p style="font-style: italic; color: var(--text-secondary);">{{ site.title }}, {{ site.institution }}</p>
<div class="pi-links">
{% if site.email %}<a href="mailto:{{ site.email }}" class="icon-link" title="Email"><i class="fa-solid fa-envelope"></i></a>{% endif %}
{% if site.links.cv and site.links.cv != "" %}<a href="{{ site.url }}{{ site.baseurl }}/{{ site.links.cv }}" class="icon-link" title="CV"><i class="ai ai-cv"></i></a>{% endif %}
{% if site.links.google_scholar and site.links.google_scholar != "" %}<a href="{{ site.links.google_scholar }}" class="icon-link" title="Google Scholar"><i class="ai ai-google-scholar"></i></a>{% endif %}
{% if site.links.github and site.links.github != "" %}<a href="{{ site.links.github }}" class="icon-link" title="GitHub"><i class="fa-brands fa-github"></i></a>{% endif %}
{% if site.links.researchgate and site.links.researchgate != "" %}<a href="{{ site.links.researchgate }}" class="icon-link" title="ResearchGate"><i class="ai ai-researchgate"></i></a>{% endif %}
</div>
{% if site.data.pi[0].education %}
<ul style="margin-top: var(--space-4);">
{% for education in site.data.pi[0].education %}
<li>{{ education | replace: "-","&#8211;" }}</li>
{% endfor %}
</ul>
{% endif %}
</div>
</div>
</div>

{% if site.data.education %}
<div class="section-card">
<h3>Education</h3>
{% for edu in site.data.education %}
<div>
<div style="display: flex; justify-content: space-between; align-items: flex-start;">
<div>
<h4 style="margin: 0; margin-bottom: var(--space-1);">{{ edu.degree }} · {{ edu.institution }}</h4>
<p style="margin: 0; font-size: 0.9rem; color: var(--text-tertiary);">{{ edu.location }}</p>
</div>
<p style="margin: 0; font-size: 0.9rem; color: var(--text-tertiary); white-space: nowrap;">{{ edu.dates }}</p>
</div>
<ul style="margin-top: var(--space-2); padding-left: 1.5rem;">
{% for detail in edu.details %}
<li style="margin-bottom: var(--space-1); font-size: 0.95rem;">{{ detail }}</li>
{% endfor %}
</ul>
</div>
{% unless forloop.last %}<hr style="border: none; border-top: 1px solid var(--border-color); margin: var(--space-4) 0;">{% endunless %}
{% endfor %}
</div>
{% endif %}





{% if site.data.experience.professional_experience %}
<div class="section-card">
<h3>Professional Experience</h3>
{% for job in site.data.experience.professional_experience %}
<div>
<div style="display: flex; justify-content: space-between; align-items: flex-start;">
<div>
<h4 style="margin: 0; margin-bottom: var(--space-1);">{{ job.position }}</h4>
<p style="margin: 0; margin-bottom: var(--space-1); color: var(--text-secondary);">{{ job.company }}</p>
<p style="margin: 0; font-size: 0.9rem; color: var(--text-tertiary);">{{ job.location }}</p>
</div>
<p style="margin: 0; font-size: 0.9rem; color: var(--text-tertiary); white-space: nowrap;">{{ job.dates }}</p>
</div>
<ul style="margin-top: var(--space-2); padding-left: 1.5rem;">
{% for highlight in job.highlights %}
<li style="margin-bottom: var(--space-1); font-size: 0.95rem;">{{ highlight }}</li>
{% endfor %}
</ul>
</div>
{% unless forloop.last %}<hr style="border: none; border-top: 1px solid var(--border-color); margin: var(--space-4) 0;">{% endunless %}
{% endfor %}
</div>
{% endif %}

{% if site.data.experience.teaching_experience %}
<div class="section-card">
<h3>Teaching Experience</h3>
{% for job in site.data.experience.teaching_experience %}
<div>
<div style="display: flex; justify-content: space-between; align-items: flex-start;">
<div>
<h4 style="margin: 0; margin-bottom: var(--space-1);">{{ job.position }}</h4>
<p style="margin: 0; margin-bottom: var(--space-1); color: var(--text-secondary);">{{ job.institution }}{% if job.course %} · {{ job.course }}{% endif %}</p>
<p style="margin: 0; font-size: 0.9rem; color: var(--text-tertiary);">{{ job.location }}</p>
</div>
<p style="margin: 0; font-size: 0.9rem; color: var(--text-tertiary); white-space: nowrap;">{{ job.dates }}</p>
</div>
{% if job.description %}
<p style="margin: var(--space-2) 0; font-size: 0.95rem;">{{ job.description }}</p>
{% endif %}
{% if job.courses %}
<ul style="margin-top: var(--space-2); padding-left: 1.5rem;">
{% for course in job.courses %}
<li style="margin-bottom: var(--space-1); font-size: 0.95rem;">{{ course }}</li>
{% endfor %}
</ul>
{% endif %}
{% if job.highlights %}
<ul style="margin-top: var(--space-2); padding-left: 1.5rem;">
{% for highlight in job.highlights %}
<li style="margin-bottom: var(--space-1); font-size: 0.95rem;">{{ highlight }}</li>
{% endfor %}
</ul>
{% endif %}
</div>
{% unless forloop.last %}<hr style="border: none; border-top: 1px solid var(--border-color); margin: var(--space-4) 0;">{% endunless %}
{% endfor %}
</div>
{% endif %}

{% if site.data.grants %}
<div class="section-card">
<h3>Grants</h3>
<ul>
{% for grant in site.data.grants %}
<li>{{ grant.name }}</li>
{% endfor %}
</ul>
</div>
{% endif %}

{% if site.data.awards %}
<div class="section-card">
<h3>Awards</h3>
<ul>
{% for award in site.data.awards %}
<li>{{ award.name | replace: "-","&#8211;" }}</li>
{% endfor %}
</ul>
</div>
{% endif %}

{% if site.data.people %}
<div class="section-card">
<h3>Students and Mentoring</h3>
<ul>
{% for student in site.data.people %}
<li>{{ student.name }}, {{ student.location }} ({{ student.degree }}, {{ student.year }})</li>
{% endfor %}
</ul>
</div>
{% endif %}

{% if site.data.services %}
<div class="section-card">
<h3>Academic Services</h3>
{% for service in site.data.services %}
<h4 style="margin-top: var(--space-4); margin-bottom: var(--space-2);">{{ service.category }}</h4>
<ul>
{% for item in service.items %}
<li>{{ item.name }}{% if item.years %}: {{ item.years }}{% endif %}</li>
{% endfor %}
</ul>
{% endfor %}
</div>
{% endif %}

{% if site.data.funders %}
<div class="section-card">
<h4>Sponsors</h4>
<div class="sponsor-logos" style="display: flex; flex-wrap: wrap; align-items: center; justify-content: center; gap: var(--space-6);">
{% for funder in site.data.funders %}
<a href="{{ funder.url }}" target="_blank"><img src="{{ site.url }}{{ site.baseurl }}/images/{{ funder.image }}" alt="Funder logo" style="max-height: 80px; max-width: 200px; border-radius: 0;" loading="lazy"></a>
{% endfor %}
</div>
</div>
{% endif %}
