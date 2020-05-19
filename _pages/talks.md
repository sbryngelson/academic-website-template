---
title: "Talks"
layout: gridlay
sitemap: false
permalink: /talks/
---

# Talks

{% if site.data.conference_talks %}
## Conference Abstracts

{% for publi in site.data.conference_talks %}
* <strong>{{ publi.title }}</strong> <br/> <i>{{ publi.authors }}</i>, {{ publi.conf }} ({{ publi.year }})
{% endfor %}
{% endif %}


{% if site.data.invited_talks %}
## Invited Talks and Seminars

{% for publi in site.data.invited_talks %}
* {{ publi.name }}
{% endfor %}
{% endif %}

