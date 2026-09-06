---
title: "Software"
layout: page
permalink: /software/
---

# Software

{% for project in site.data.software %}
<div class="section-card" markdown="0">
<h2>{{ project.name }}</h2>
{% if project.website or project.repo or project.docs or project.paper %}
<div class="pub-actions" style="margin-bottom: var(--space-3);">
{% if project.website %}<a href="{{ project.website }}" target="_blank" class="btn-pill btn-website">Website</a>{% endif %}
{% if project.repo %}<a href="{{ project.repo }}" target="_blank" class="btn-pill btn-git">Code</a>{% endif %}
{% if project.docs %}<a href="{{ project.docs }}" target="_blank" class="btn-pill btn-link">Docs</a>{% endif %}
{% if project.paper %}<a href="{{ project.paper }}" target="_blank" class="btn-pill btn-link">Paper</a>{% endif %}
</div>
{% endif %}
{% if project.authors %}<p><strong>Authors:</strong> <em>{{ project.authors }}</em></p>{% endif %}
<p>{{ project.description }}</p>
</div>
{% endfor %}

{% unless site.data.software.size > 0 %}
<p class="text-muted">No software listed yet. Add entries to <code>_data/software.yml</code>.</p>
{% endunless %}
