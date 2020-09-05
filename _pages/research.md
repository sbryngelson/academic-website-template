---
title: "Research"
layout: gridlay
sitemap: false
permalink: /research/
---

# Research


<div class="jumbotron">
<div class="row">
<div class="col-md-9 col-sm-12 col-xs-12">
 <h4>Cavitation as a gateway for better therapies</h4>
Cavitating bubbles can ablate cancer cells, fragment tissues, and deliver drugs, among other functions.
I develop high-fidelity computational methods that simulate these dynamics, accelerating development in these areas.
Examples are:
* Euler--Euler and Euler--Lagrange <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-IJMF-19.pdf" target="_blank">sub-grid bubble cloud models</a>
* Accelerated models using a <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-IJMF-20.pdf" target="_blank">statistical paradigm and neural networks</a>
* Implementation in my open-source solver <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-CPC-19.pdf" target="_blank">MFC</a>

These enable realistic simulation of the bubble populations that nucleate _in vivo_ during treatment.
This has impacted specific application areas:
* Improved _burst-wave lithotripsy administration_ in human trials 
* Understanding of <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-JCP-20.pdf" target="_blank">bubble-collapse-rebound</a> dynamics
* Cavitation-induced <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-JFM-19.pdf" target="_blank">erosion potential</a> for rough materials
</div>
<div class="d-none d-md-block col-sm-3">
 <img src="{{ site.url }}{{ site.baseurl }}/images/respic/droplets_in_water.jpeg" width="100%"/>
</div>
</div>
</div>


<div class="jumbotron">
<div class="row">
<div class="col-md-9 col-sm-12 col-xs-12">
<h4>Learning from animals: Humpback whales</h4>
Perspective on bubble utilization can come from a surprising source: **animals**.
<a href="https://www.youtube.com/watch?v=Q8iDcLTD9wQ" target="_blank">Humpback whales hunt</a> using bubbly regions (called bubble nets) and loud vocalizations.
Specifically, they
* Release air from their blowholes while swimming, spiraling downwards
* Create a wall of bubbles that surrounds their prey
* Vocalize from the exterior, trapping small fish in a wall of loud sound (~190dB!)
* Swim up and through the interior, lunge feeding on the fish

While fascinating, the acoustic mechanisms that enable this behavior are not understood.
I used an ensemble-averaged bubbly flow model to simulate the relevant acoustic phenomena, <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-JASA-20.pdf" target="_blank">advancing our interpretation of this behavior</a>.
Similar outcomes are desirable for sensitive, implanted biomedical devices.
</div>
<div class="d-none d-md-block col-sm-3">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/whales.jpeg" width="100%"/>
</div>
</div>
</div>
 

<div class="jumbotron">
<div class="row">
<div class="col-md-9 col-sm-12 col-xs-12">
 <h4>Therapy design via adjoint-based optimization</h4>
Designing medical therapies requires efficient optimization algorithms. 
Current methods fail to account for the _material interfaces_ or _shock waves_ that occur during treatments like lithotripsy and histotripsy.
I developed an adjoint-based technique that navigates these complications and computes the gradient-based information required for such <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-xpacc18.pdf" target="_blank">optimization and sensitivity analysis</a>.
Coupling with our flow solver <a href="{{ site.url }}{{ site.baseurl }}/software/" target="_blank">Plascom2</a> provides a fully-functional optimization framework for medical therapies and devices.
</div>
<div class="d-none d-md-block col-sm-3">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/lithotripsy.jpg" width="100%"/>
</div>
</div>
</div>

<div class="jumbotron">
<div class="row">
<div class="col-md-9 col-sm-12 col-xs-12">
 <h4>Targeted microcapsules enable drug delivery</h4>
Observations in experiments and simulations show that the kinematic behavior of elastic capsules are sensitive to the flow strength and capsule material properties.
I developed a stability description of the rotating state of this coupled system, as represented by a boundary integral flow formulation with spherical harmonic basis functions describing the elastic capsule geometry.
This was the first <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-JFM-18.pdf" target="_blank">Floquet analysis</a> of such a complex system, classifying its stability without the ambiguity of empirical perturbations or experiments.
These results can be used to guide design of capsules that deliver drugs in the microcirculation or <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-EJM-19.pdf" target="_blank">characterize them in rheometers</a>.
</div>
<div class="d-none d-md-block col-sm-3">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/microcapsules.jpg" width="100%"/>
</div>
</div>
</div>

<div class="jumbotron">
<div class="row">
<div class="col-md-9 col-sm-12 col-xs-12">
  <h4>Deformed and diseased cells</h4>
I have developed simulation-based methods for flows associated with targeted drug delivery therapies and biomicrofluidic devices.
This includes physical models for the cells and particles that make up such flows and numerical techniques that efficiently simulate their flow.
I implemented these in RBC3D, my state-of-the-art flow solver that resolves <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-PRF-16.pdf" target="_blank">all particle-scale interactions</a> and several <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-PRF-18.pdf" target="_blank">stability and optimization research tools</a>.
Coupling these tools with novel analysis, I discovered the <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-RA-16.pdf" target="_blank">rheological mechanism</a> that prevents sickle cells from flowing efficiently, which must also be considered when designing drug delivery particles.
I then showed that these circulatory flows are chaotic, so computational methods cannot predict exact cell locations at long times.
However, the <a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-PRE-19.pdf" target="_blank">data-driven low-order model</a> I developed accurately represents the statistics of the flow, accelerating the design of biomedical devices.
</div>
<div class="d-none d-md-block col-sm-3">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/sickle_cells2.jpg" width="100%"/>
</div>
</div>
</div>

