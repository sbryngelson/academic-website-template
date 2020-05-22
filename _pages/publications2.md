---
title: "Publications2"
layout: gridlay
sitemap: false
permalink: /publications2/
---


# Publications

For a full list see [below](#in-the-pipeline) or go to [Google Scholar](https://scholar.google.com/citations?user=dM-nHdMAAAAJ&hl=en) or [ResearchGate](https://www.researchgate.net/profile/Spencer_Bryngelson)



{% assign yeartest = false %}
{% for publi in site.data.publist %}
  {% if publi.year %}
   {% assign yeartest = true %}
  {% endif %}
{% endfor %}

{% if yeartest == false %}
## Coming Soon
{% endif %}

{% for publi in site.data.publist %}

{% if publi.year %}{% else %}

{% assign bibtest = false %}
{% if publi.url %}
 {% assign bibfile = "/papers/" | append:  publi.url  | append: ".html" %}

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
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}  {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}  {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.html" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %}    
 </div>
  {% endif %}
{% endfor %}


## Journal Papers and Proceedings


{% for publi in site.data.publist %}
{% if publi.year %}

{% assign bibtest = false %}
{% if publi.url %}
  {% assign bibfile = "/papers/" | append:  publi.url  | append: ".html" %}
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
  {{ publi.display }} {% if publi.year %}({{publi.year}}){% endif %}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}  {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}  {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.html" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %} 
</div>

{% endif %}
{% endfor %}

