---
title: "Talks"
layout: gridlay
sitemap: false
permalink: /talks/
---

# Talks

{% if site.data.conference_talks %}
<div class="jumbotron" style="padding:3%; padding-bottom:1%; margin-top:3%; margin-bottom:3%">
## Conference Abstracts

{% for publi in site.data.conference_talks %}
* <strong>{{ publi.title }}</strong> <br/> <i>{{ publi.authors }}</i>, {{ publi.conf }} ({{ publi.year }})
{% endfor %}
</div>
{% endif %}


{% if site.data.invited_talks %}
<div class="jumbotron" style="padding:3%; padding-bottom:1%; margin-top:3%; margin-bottom:3%">
## Invited Talks and Seminars

{% for publi in site.data.invited_talks %}
* {{ publi.name }}
{% endfor %}
</div>
{% endif %}

