---
title: "Talks"
layout: gridlay
sitemap: false
permalink: /talks/
---

## Talks

{% if site.data.conference_talks %}
<div class="jumbotron">
### Conference Abstracts
{% for publi in site.data.conference_talks %}
- <strong>{{ publi.title }}</strong> <br/> 
 {{ publi.authors | replace_first: 'S. H. Bryngelson', '<b>S. H. Bryngelson</b>'}} <br/>
 <i>{{ publi.conf }}</i> ({{ publi.year }}) <br/>
{% endfor %}
</div>
{% endif %}

{% if site.data.invited_talks %}
<div class="jumbotron">
### Invited Talks and Seminars
<ul>
{% for publi in site.data.invited_talks %}
<li> {{ publi.name | replace: "-","&#8211;" }} </li>
{% endfor %}
</ul>
</div>
{% endif %}
