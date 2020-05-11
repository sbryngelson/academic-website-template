---
title: "Bryngelson Group - Publications"
layout: gridlay
excerpt: "Bryngelson Group -- Publications."
sitemap: false
permalink: /publications/
---


# Publications

For a full list see [below](#in-the-pipeline) or go to [Google Scholar](https://scholar.google.com/citations?user=dM-nHdMAAAAJ&hl=en) or [ResearchGate](https://www.researchgate.net/profile/Spencer_Bryngelson)

## Highlights

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit>{{ publi.title }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="33%" style="float: left" />
  <p>{{ publi.description }}</p>
  <p><em>{{ publi.authors }}</em></p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>

## In the Pipeline

{% for publi in site.data.pub_pending %}

  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.link.url }}" target="_blank">{{ publi.link.display }}</a>{% if publi.arxiv %}, arXiv: <a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank">{{ publi.arxiv }}</a> {% endif %}

{% endfor %}

## Journal Papers

{% for publi in site.data.publist %}

  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.link.url }}" target="_blank">{{ publi.link.display }}</a>{% if publi.doi %}, doi: <a href="http://dx.doi.org/{{ publi.doi }}" target="_blank">{{ publi.doi }}</a> {% endif %}

{% endfor %}

## Conference Proceedings




