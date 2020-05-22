---
title: "Publications"
layout: gridlay
sitemap: false
permalink: /publications/
---

# Publications

## Coming Soon

{% for publi in site.data.publist %}
{% if publi.year %}{% else %}

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
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}  {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}  {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.bib" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %}    
</div>

{% endif %}
{% endfor %}


{% for myyear in site.data.years %}

{% assign yeartest = false %}
{% for publi in site.data.publist %}
  {% if publi.year == myyear.year %}
   {% assign yeartest = true %}
  {% endif %}
{% endfor %}

{% if yeartest == true %}
## {{ myyear.year }}
{% endif %}

{% for publi in site.data.publist %}
{% if publi.year == myyear.year %}


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
  {{ publi.display }} {% if publi.year %}({{publi.year}}){% endif %}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}    {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.bib" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %}    {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}
 </div>
{% endif %}
{% endfor %}

{% endfor %}

