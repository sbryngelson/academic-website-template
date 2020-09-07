---
title: "Publications"
layout: gridlay
sitemap: false
permalink: /publications/
---

<style>
.btn{
    margin-bottom:0;
}
.jumbotron{
    padding-bottom:0px;
    padding-top:5px;
    margin-top:10px;
    margin-bottom:10px
}
</style>

## Publications

{% assign yeartest = true %}
{% for publi in site.data.publist %}
  {% if publi.year %}{% else %}
   {% assign yeartest = false %}
  {% endif %}
{% endfor %}

{% if yeartest == false %}
### Under Review
{% endif %}

{% for publi in site.data.publist %}
{% if publi.year %}{% else %}

{% assign bibtest = false %}
{% if publi.url %}
{% assign bibfile = "/papers/" | append:  publi.url  | append: ".txt" %}
{% for file in site.static_files %}
  {% if file.path contains bibfile %}
   {% assign bibtest = true %}
  {% endif %}
{% endfor %}
{% endif %}

<div class="jumbotron">
<div class="row">
<div class="d-none d-md-block col-sm-2">
{% if publi.image %}
 <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" width="100%" style="margin-top:5px"/>
{% endif %}
</div>
<div class="col-md-10 col-sm-12 col-xs-12">
 <strong> {{ publi.title }}</strong><br/>
 {{ publi.authors | replace_first: 'S. H. Bryngelson', '<b>S. H. Bryngelson</b>'}}<br/>
 {% if publi.journal %}Under review at <i>{{ publi.journal }}</i>,{% endif %} {% if publi.arxiv %} arXiv {{ publi.arxiv }}{% endif %}<br/>
 {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button type="button" class="btn btn-success btn-sm">PDF</button></a>{% endif %}
 {% if publi.arxiv %}<a href="https://arxiv.org/abs/{{ publi.arxiv }}" target="_blank"><button class="btn btn-sm btn-primary">ARXIV</button></a> {% endif %}
 {% if bibtest == true %} <a data-toggle="collapse" href="#{{publi.url}}2" class="btn btn-sm btn-warning" role="button" aria-expanded="false" aria-controls="{{publi.url}}2">BIB</a> {% endif %}
 {% if publi.abstract %} <a data-toggle="collapse" href="#{{publi.url}}" class="btn btn-sm btn-danger" role="button" aria-expanded="false" aria-controls="{{publi.url}}">ABSTRACT</a>{% endif %}

{% if publi.abstract %}
<div class="collapse" id="{{publi.url}}"><div class="well-collapse">
 {{publi.abstract}}
</div></div>
{% endif %}

{% if bibtest == true %}
<div class="collapse" id="{{publi.url}}2"><div class="well-collapse">
 <iframe src='{{site.url}}{{site.baseurl}}/papers/{{publi.url}}.txt' scrolling='yes' width="100%" height="210" frameborder='0'></iframe>
</div></div>
{% endif %}
</div>
</div>
</div>
{% endif %}
{% endfor %}

{% if site.group_pub_by_year == true %}{% else %}
### Journal Papers and Proceedings 
{% endif %}

{% for myyear in site.data.years %}

{% assign yeartest = false %}
{% for publi in site.data.publist %}
  {% if publi.year == myyear.year %}
   {% assign yeartest = true %}
  {% endif %}
{% endfor %}

{% if site.group_pub_by_year == true %}
{% if yeartest == true %}
### {{ myyear.year }}
{% endif %}
{% endif %}

{% for publi in site.data.publist %}
{% if publi.year == myyear.year %}


{% assign bibtest = false %}
{% if publi.url %}
{% assign bibfile = "/papers/" | append:  publi.url  | append: ".txt" %}
{% for file in site.static_files %}
  {% if file.path contains bibfile %}
   {% assign bibtest = true %}
  {% endif %}
{% endfor %}
{% endif %}

<div class="jumbotron">
<div class="row">
<div class="d-none d-md-block col-sm-2">
  {% if publi.image %}
   <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" width="100%" style="margin-top:5px"/>
  {% endif %}
</div>
<div class="col-md-10 col-sm-12 col-xs-12">
  <b>{{ publi.title }}</b><br/>
  {{ publi.authors | replace_first: 'S. H. Bryngelson', '<b>S. H. Bryngelson</b>'}}<br/>
  <i>{{ publi.journal }}</i> {% if publi.info %}{{publi.info}}{% endif %} {% if publi.year %}({{publi.year}}){% endif %}<br/>
  {% if publi.url %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.url }}.pdf" target="_blank"><button type="button" class="btn btn-sm btn-success">PDF</button></a>{% endif %} {% if publi.doi %}<a href="http://dx.doi.org/{{ publi.doi }}" target="_blank"><button type="button" class="btn btn-sm btn-primary">DOI</button></a> {% endif %}{% if bibtest == true %} <a data-toggle="collapse" href="#{{publi.url}}2" class="btn btn-sm btn-warning" role="button" aria-expanded="false" aria-controls="{{publi.url}}2">BIB</a> {% endif %}{% if publi.abstract %} <a data-toggle="collapse" href="#{{publi.url}}" class="btn btn-sm btn-danger" role="button" aria-expanded="false" aria-controls="{{publi.url}}">ABSTRACT</a>{% endif %}

{% if publi.abstract %}
<div class="collapse" id="{{publi.url}}"><div class="well-collapse">
 {{publi.abstract}}
</div></div>
{% endif %}

{% if bibtest == true %}
<div class="collapse" id="{{publi.url}}2"><div class="well-collapse">
<iframe src='{{site.url}}{{site.baseurl}}/papers/{{publi.url}}.txt' scrolling='yes' width="100%" height="210px" frameborder='0'></iframe>
</div></div>
{% endif %}
</div>
</div>
</div>

{% endif %}
{% endfor %}

{% endfor %}

