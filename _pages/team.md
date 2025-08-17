---
title: "Team"
layout: gridlay
sitemap: false
permalink: /team/
---

## Team

**We are looking for new team members** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies) **!**

## PI

{% for member in site.data.pi %}

<div class="jumbotron">
<div class="row">
<div class="col-sm-2">
  <img src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" width="100%" style="max-width:250px"/>
</div>
<div class="col-sm-9 col-xs-12">
<h4>{{ member.name }}</h4>
<i>{{ member.info }}</i><br>

{% if member.website %}<a href="{{ member.website }}" target="_blank"><i class="fa fa-home fa-2x"></i></a> {% endif %} {% if member.email %}<a href="mailto:{{ member.email }}" target="_blank"><i class="fa fa-envelope-square fa-2x"></i></a> {% endif %} {% if member.scholar %} <a href="{{ member.scholar }}" target="_blank"><i class="ai ai-google-scholar-square ai-2x"></i></a> {% endif %} {% if member.cv %} <a href="{{ member.cv }}" target="_blank"><i class="ai ai-cv-square ai-2x"></i></a> {% endif %} {% if member.github %} <a href="{{ member.github }}" target="_blank"><i class="fa fa-github-square fa-2x"></i></a> {% endif %} {% if member.researchgate %} <a href="{{ member.researchgate }}" target="_blank"><i class="ai ai-researchgate-square ai-2x"></i></a> {% endif %}

<ul style="overflow: hidden">
<li> {{ member.education[0] }} </li>
<li> {{ member.education[1] }} </li>
</ul>
</div>
</div>
</div>

{% endfor %}


## Postdocs

<div class='jumbotron' markdown="0">
{% assign items = site.data.people | where: "info", "Postdoc" | sort: "name" %}
{% assign number_printed = 0 %}
{% for member in items %}
  {% assign even_odd = number_printed | modulo: 2 %}
  {% if even_odd == 0 %}<div class="row">{% endif %}

  <div class="col-sm-2">
    <img src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" width="100%" style="max-width:250px"/>
  </div>
  <div class="col-sm-4 col-xs-12">
    <h4>{{ member.name }}</h4>
    <i>{{ member.info }}<br></i>
    {% if member.website %}<a href="{{ member.website }}" target="_blank"><i class="fa fa-home fa-2x"></i></a> {% endif %}
    {% if member.email %}<a href="mailto:{{ member.email }}" target="_blank"><i class="fa fa-envelope-square fa-2x"></i></a> {% endif %}
    {% if member.scholar %}<a href="{{ member.scholar }}" target="_blank"><i class="ai ai-google-scholar-square ai-2x"></i></a> {% endif %}
    {% if member.cv %}<a href="{{ member.cv }}" target="_blank"><i class="ai ai-cv-square ai-2x"></i></a> {% endif %}
    {% if member.github %}<a href="{{ member.github }}" target="_blank"><i class="fa fa-github-square fa-2x"></i></a> {% endif %}
    {% if member.researchgate %}<a href="{{ member.researchgate }}" target="_blank"><i class="ai ai-researchgate-square ai-2x"></i></a> {% endif %}
  </div>

  {% assign number_printed = number_printed | plus: 1 %}
  {% if even_odd == 1 %}</div>{% endif %}
{% endfor %}
{% if number_printed | modulo: 2 == 1 %}</div>{% endif %}
</div>

## PhD Students

<div class='jumbotron' markdown="0">
{% assign items = site.data.people | where: "info", "PhD Student" | sort: "name" %}
{% assign number_printed = 0 %}
{% for member in items %}
  {% assign even_odd = number_printed | modulo: 2 %}
  {% if even_odd == 0 %}<div class="row">{% endif %}

  <div class="col-sm-2">
    <img src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" width="100%" style="max-width:250px"/>
  </div>
  <div class="col-sm-4 col-xs-12">
    <h4>{{ member.name }}</h4>
    <i>{{ member.info }}<br></i>
    {% if member.email %}<a href="mailto:{{ member.email }}" target="_blank"><i class="fa fa-envelope-square fa-2x"></i></a> {% endif %}
  </div>

  {% assign number_printed = number_printed | plus: 1 %}
  {% if even_odd == 1 %}</div>{% endif %}
{% endfor %}
{% if number_printed | modulo: 2 == 1 %}</div>{% endif %}
</div>

## Summer Students (BSc)

<div class='jumbotron' markdown="0">
{% assign items = site.data.people | where: "info", "Summer Student (BSc)" | sort: "name" %}
{% assign number_printed = 0 %}
{% for member in items %}
  {% assign even_odd = number_printed | modulo: 2 %}
  {% if even_odd == 0 %}<div class="row">{% endif %}

  <div class="col-sm-2">
    <img src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" width="100%" style="max-width:250px"/>
  </div>
  <div class="col-sm-4 col-xs-12">
    <h4>{{ member.name }}</h4>
    <i>{{ member.info }}<br></i>
    {% if member.email %}<a href="mailto:{{ member.email }}" target="_blank"><i class="fa fa-envelope-square fa-2x"></i></a> {% endif %}
  </div>

  {% assign number_printed = number_printed | plus: 1 %}
  {% if even_odd == 1 %}</div>{% endif %}
{% endfor %}
{% if number_printed | modulo: 2 == 1 %}</div>{% endif %}
</div>


