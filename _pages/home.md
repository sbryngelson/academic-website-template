---
title: "Home"
layout: homelay
sitemap: false
permalink: /
---

<style>
code {padding: 6px 8px; font-size: 90%;}
</style>

# Welcome!

<br/>
#### `$whoami`

New biomedical devices and therapies stand to improve human health outcomes the world over.
Though innovating in this space is challenging, predictive simulation tools provide a promising path forward.
I am a computational scientist who clears these paths via new data-driven models, numerical algorithms, and extreme-scale software.
Recent examples include the <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-IJMF-20.pdf" target="_blank">most efficient sub-grid model</a> for simulating cavitation, a <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-PRE-19.pdf" target="_blank">very-low-order model</a> for cell-scale blood flow, and <a href="https://mfc-caltech.github.io/" target="_blank">MFC</a>, my scalable open-source multi-phase flow solver.
These developments guide biomicrofluidic device design and improve human patient outcomes for a range of medical treatments (e.g. burst-wave <a href="https://www.hopkinsmedicine.org/health/treatment-tests-and-therapies/lithotripsy" target="_blank">lithotripsy</a>).

<br/>

<div class="row" style="text-align:center">
<video controls autoplay muted loop width="90%" style="display:inline-block; border-radius: 25px; border:0px solid #FFF;">
  <source src="{{ site.url }}{{ site.baseurl }}/images/videos/3dtrain_breakdown2.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
  Red cell train breakup. Bryngelson & Freund, *Phys. Rev. Fluids* (2018)
</div>
<br/>

#### `$id`

I am a Senior Postdoctoral Scholar at the California Institute of Technology, working with <a href="https://www.colonius.caltech.edu/" target="_blank">Professor Tim Colonius</a>.
I also work with <a href="http://sandlab.mit.edu/" target="_blank">Professor Themis Sapsis</a> at the Massachusetts Institute of Technology on machine-learned model closures.
Previously, I was a Postdoctoral Researcher at the <a href="https://xpacc.illinois.edu/" target="_blank">Center for Exascale Simulation of Plasma-Coupled Combustion</a> (XPACC).
I have a Ph.D. and M.S. in <a href="https://mechanical.illinois.edu/graduate/graduate-degree-programs/phd-programs/phd-theoretical-and-applied-mechanics" target="_blank">Theoretical and Applied Mechanics</a> from the University of Illinois at Urbana–Champaign (2017 and 2015), where I worked with <a href="https://aerospace.illinois.edu/directory/profile/jbfreund" target="_blank">Professor Jonathan Freund</a>.
I hold B.S. degrees in Mechanical Engineering and Mathematics from the University of Michigan–Dearborn (2013).

<br/>
<div class="well-md">
<h3>Sponsors</h3>
<div style='display:block; text-align:center; margin-left:auto; margin-right:auto;'>
 {% for funder in site.data.funders %}{% if funder.url %}<a href="{{funder.url}}" target="_blank"><img src='/images/logopic/{{ funder.image }}' style='max-height: 70px; max-width: 170px;'/></a>{% else %}<img src='/images/logopic/{{ funder.image }}' class='mycenter' style='max-height: 70px; max-width: 170px;'/>{% endif %}   {% endfor %}
</div>

</div>


