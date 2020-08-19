---
title: "About"
layout: gridlay
sitemap: false
permalink: /about/
---

## About 


{% for member in site.data.pi %}

<div class="row">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="30%" style="float: left" />
  <h3>{{ member.name }}</h3>
  <i style="font-size:20px">{{ member.info }}</i><br>

  {% if member.website %}<a href="{{ member.website }}" target="_blank"><i class="fa fa-home fa-3x"></i></a> {% endif %}
  {% if member.email %}<a href="mailto:{{ member.email }}" target="_blank"><i class="fa fa-envelope-square fa-3x"></i></a> {% endif %}
  {% if member.scholar %} <a href="{{ member.scholar }}" target="_blank"><i class="ai ai-google-scholar-square ai-3x"></i></a> {% endif %}
  {% if member.cv %} <a href="{{ site.url }}{{ site.baseurl }}/{{ member.cv }}" target="_blank"><i class="ai ai-cv-square ai-3x"></i></a> {% endif %}
  {% if member.github %} <a href="{{ member.github }}" target="_blank"><i class="fa fa-github-square fa-3x"></i></a> {% endif %}
  {% if member.researchgate %} <a href="{{ member.researchgate }}" target="_blank"><i class="ai ai-researchgate-square ai-3x"></i></a> {% endif %}
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  <li> {{ member.education5 }} </li>
  {% endif %}

  {% if member.number_educ == 6 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  <li> {{ member.education5 }} </li>
  <li> {{ member.education6 }} </li>
  {% endif %}

  </ul>
</div>

{% endfor %}

## Sketch

Dr. Spencer Bryngelson develops computational tools to improve human health outcomes. 
He is currently a Senior Postdoctoral Scholar at the California Institute of Technology, working with Professor Tim Colonius. 
He also works with Professor Themis Sapsis at the Massachusetts Institute of Technology. 
Previously, he was a Postdoctoral Research Associate at the Center for Exascale Simulation of Plasma-Coupled Combustion. 
He holds a Ph.D. in Theoretical and Applied Mechanics from the University of Illinois at Urbana–Champaign, where he worked with Professor Jonathan Freund.

{% if site.data.awards %}
## Awards

{% for award in site.data.awards %}
* {{ award.name }}
{% endfor %}

{% endif %}

{% if site.data.grants %}
## Grants

{% for grant in site.data.grants %}
* {{ grant.name }}
{% endfor %}

{% endif %}

## Collaborators

* <a href="http://acoustics.ae.illinois.edu/" target="_blank">Professor Daniel Bodony (Aerospace, University of Illinois)</a>
* <a href="http://colonius.caltech.edu/" target="_blank">Professor Tim Colonius (Computational Flow Physics, Caltech)</a>
* <a href="http://ewoldt.mechanical.illinois.edu/" target="_blank">Professor Randy Ewoldt (MechSE, University of Illinois)</a>
* <a href="https://www.cbe.iastate.edu/the-department/facultystaff/profile/rofox/" target="_blank">Professor Rodney Fox (Iowa State University)</a>
* <a href="http://jbfreund.mechse.illinois.edu/" target="_blank">Professor Jonathan Freund (MechSE + Aero, UIUC)</a>
* <a href="http://www.gueniat.fr/" target="_blank">Dr. Florimond Guéniat (Birmingham City University, UK)</a>
* <a href="https://sites.google.com/view/kazukimaeda/home" target="_blank">Dr. Kazuki Maeda (Center for Turbulence Research, Stanford)</a>
* <a href="http://lukeo.cs.illinois.edu/" target="_blank">Professor Luke Olson (Computer Science and CSE, University of Illinois)</a>
* <a href="https://viterbi.usc.edu/directory/faculty/Pantano-Rubino/Carlos" target="_blank">Professor Carlos Pantano (University of Southern California)</a>
* <a href="http://www.its.caltech.edu/~mrdz/index.html" target="_blank">Dr. Mauro Rodriguez (MechE, Caltech)</a>
* <a href="http://sandlab.mit.edu/" target="_blank">Professor Themis Sapsis (Sand Lab, MIT)</a>
* <a href="https://kevinschmidmayer.github.io/overview/" target="_blank">Dr. Kevin Schmidmayer (Sopra Steria, France)</a>

