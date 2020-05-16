---
title: "Publications"
layout: gridlay
sitemap: false
permalink: /publications/
---


# Publications

For a full list see [below](#in-the-pipeline) or go to [Google Scholar](https://scholar.google.com/citations?user=dM-nHdMAAAAJ&hl=en) or [ResearchGate](https://www.researchgate.net/profile/Spencer_Bryngelson)


## In the Pipeline


{% for publi in site.data.publist %}


{% if publi.doi %}{% else %}

{% assign bibtest = false %}
{% if publi.url %}
 {% assign bibfile = "/papers/" | append:  publi.url  | append: ".bib" %}

 {% for file in site.static_files %}
  {% if file.path contains bibfile %}
   {% assign bibtest = true %}
  {% endif %}
 {% endfor %}
{% endif %}

 <div class="well-sm">
    {% if publi.image %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="10%" style="float: left" />
    {% else %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/dummy.png" width="10%" class="img2"  style="float: left" />
    {% endif %}

  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  {{ publi.display }}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}    {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.bib" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %}    {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}
 </div>
  {% endif %}
{% endfor %}


## Journal Papers


{% for publi in site.data.publist %}


{% if publi.doi %}

{% assign bibtest = false %}
{% if publi.url %}
 {% assign bibfile = "/papers/" | append:  publi.url  | append: ".bib" %}

 {% for file in site.static_files %}
  {% if file.path contains bibfile %}
   {% assign bibtest = true %}
  {% endif %}
 {% endfor %}
{% endif %}

 <div class="well-sm">
    {% if publi.image %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="10%" style="float: left" />
    {% else %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/dummy.png" width="10%" class="img2"  style="float: left" />
    {% endif %}

  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  {{ publi.display }}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}    {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.bib" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %}    {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}
 </div>
  {% endif %}
{% endfor %}


{% if site.data.conference_papers %}
## Conference Papers


{% for publi in site.data.conference_papers %}

{% assign bibtest = false %}
{% if publi.url %}
 {% assign bibfile = "/papers/" | append:  publi.url  | append: ".bib" %}

 {% for file in site.static_files %}
  {% if file.path contains bibfile %}
   {% assign bibtest = true %}
  {% endif %}
 {% endfor %}
{% endif %}

 <div class="well-sm">
    {% if publi.image %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="10%" style="float: left" />
    {% else %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/dummy.png" width="10%" class="img2"  style="float: left" />
    {% endif %}

  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  {{ publi.display }}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}    {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.bib" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %}    {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}
 </div>
{% endfor %}
{% endif %}

{% if site.data.other_pubs %}
## Other Publications


{% for publi in site.data.other_pubs %}

 <div class="well-sm">
    {% if publi.image %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="10%" style="float: left" />
    {% else %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/dummy.png" width="10%" class="img2"  style="float: left" />
    {% endif %}

  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  {{ publi.display }}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}
 </div>
{% endfor %}
{% endif %}



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

<br/>


