---
title: "Publications"
layout: gridlay
sitemap: false
permalink: /publications/
---

<style>
.flex-container {
  /* We first create a flex layout context */
  display: flex;
  /* Then we define the flow direction 
     and if we allow the items to wrap 
   * Remember this is the same as:
   * flex-direction: row;
   * flex-wrap: wrap;
   */
  flex-flow: row wrap;
  /* Then we define how is distributed the remaining space */
  justify-content: space-around;
  padding: 0;
  margin: 0;
  list-style: none;
}

.flex-item1 {
  padding: 5px;
  width: 10%;
}

.flex-item2 {
  padding: 5px;
  width: 90%;
</style>

# Publications

{% assign yeartest = true %}
{% for publi in site.data.publist %}
  {% if publi.year %}{% else %}
   {% assign yeartest = false %}
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
<ul class="flex-container">
<li class="flex-item1">
  {% if publi.image %}
   <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="90%" style="float: left" />
  {% endif %}
</li>
<li class="flex-item2">
  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  {{ publi.display }}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}  {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}  {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.html" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %}    {% if publi.abstract %} <a data-toggle="collapse" href="#{{publi.url}}"  class="btn-abstract" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false" aria-controls="{{publi.url}}">ABSTRACT</a>{% endif %}

{% if publi.abstract %}
<div class="collapse" id="{{publi.url}}">
<div class="well-abstract">
{{publi.abstract}}
</div>
</div>
{% endif %}
</li>
</ul>

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
{% assign bibfile = "/papers/" | append:  publi.url  | append: ".html" %}
{% for file in site.static_files %}
  {% if file.path contains bibfile %}
   {% assign bibtest = true %}
  {% endif %}
{% endfor %}
{% endif %}

<div class="well-sm">
<ul class="flex-container">
<li class="flex-item1">
  {% if publi.image %}
   <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="90%" style="float: left" />
  {% endif %}
</li>
<li class="flex-item2">
  <strong> {{ publi.title }}</strong> <br />
  <em>{{ publi.authors }} </em><br />
  {{ publi.display }} {% if publi.year %}({{publi.year}}){% endif %}<br />
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button class="btn-pdf">PDF</button></a>{% endif %}    {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button class="btn-doi">DOI</button></a> {% endif %}   {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn-arxiv">ARXIV</button></a> {% endif %}   {% if bibtest == true %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.html" target="_blank"><button class="btn-bib">BIB</button></a> {% endif %} {% if publi.abstract %} <a data-toggle="collapse" href="#{{publi.url}}"  class="btn-abstract" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false" aria-controls="{{publi.url}}">ABSTRACT</a>{% endif %}

{% if publi.abstract %}
<br/>
<div class="collapse" id="{{publi.url}}">
<div class="well-abstract">
{{publi.abstract}}
</div>
</div>
{% endif %}
</li>
</ul>

 </div>
{% endif %}
{% endfor %}

{% endfor %}

