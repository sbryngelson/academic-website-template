---
title: "Research"
layout: gridlay
sitemap: false
permalink: /research/
---

# Research

<div class="jumbotron" style="padding:3%; padding-bottom:1%; margin-top:3%; margin-bottom:3%">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/droplets_in_water.jpeg" width="20%" style="float: left" />
  <h4>Bubble and droplet dynamics</h4>
The fluid dynamics associated with cavitating bubbles and impinging droplets can ablate cancer cells (oncotripsy), fragment tissues (miniscalpels), and deliver drugs, among many other functions.
I develop high-fidelity computational methods to simulate these flows, accelerating the development of acoustics-driven therapies.
This includes multiple state-of-the-art methods for bubbly flow dynamics, which created <a href="https://bryngelson-research.com/papers/bryngelson-IJMF-19.pdf" target="_blank">guidelines for model selection</a>.
I then improved these models via a <a href="https://bryngelson-research.com/papers/bryngelson-IJMF-20.pdf" target="_blank">statistical approach that uses neural networks</a>.
This enables realistic simulations of the large bubble populations that nucleate near soft tissues during treatment.
In particular, such methods were implemented in an open-source solver we developed, <a href="https://bryngelson-research.com/papers/bryngelson-CPC-19.pdf" target="_blank">MFC</a>.
These simulations have already improved *burst-wave lithotripsy administration in human trials*.
I have also applied this method to other <a href="https://bryngelson-research.com/papers/bryngelson-JCP-20.pdf" target="_blank">bubble cavitation problems</a> of great societal impact.
For example, quantifying the potential for <a href="https://bryngelson-research.com/papers/bryngelson-JFM-19.pdf" target="_blank">cavitation-induced erosion of rough materials</a>, an important consideration for targeted treatment of urinary stones.
</div>
 

<div class="jumbotron" style="padding:3%; padding-bottom:1%; margin-top:3%; margin-bottom:3%">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/microcapsules.jpg" width="20%" style="float: left;" />
  <h4>Microcapsules for drug delivery</h4>
Observations in experiments and simulations show that the kinematic behavior of elastic capsules are sensitive to the flow strength and capsule material properties.
I developed a stability description of the rotating state of this coupled system, as represented by a boundary integral flow formulation with spherical harmonic basis functions describing the elastic capsule geometry.
This was the first <a href="https://bryngelson-research.com/papers/bryngelson-JFM-18.pdf" target="_blank">Floquet analysis</a> of such a complex system, classifying its stability without the ambiguity of empirical perturbations or experiments.
These results can be used to guide design of capsules that deliver drugs in the microcirculation or <a href="https://bryngelson-research.com/papers/bryngelson-EJM-19.pdf" target="_blank">characterize them in rheometers</a>.
</div>


<div class="jumbotron" style="padding:3%; padding-bottom:1%; margin-top:3%; margin-bottom:3%">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/whales.jpeg" width="20%" style="float: left;" />
  <h4>Humpback whale bubble-net feeding</h4>
Perspective on bubble utilization can also come from a surprising source: *animals*.
For example, <a href="https://www.youtube.com/watch?v=Q8iDcLTD9wQ" target="_blank">humpback whales hunt</a> using bubbly regions (called bubble nets) and loud vocalizations.
Specifically, they release air from their blowholes while spiraling downwards, creating a bubbly wall surrounding their prey.
Next, they vocalize from the exterior (~188dB), effectively trapping the small fish inside a "wall of sound".
Finally, they swim up and through the interior, feeding on the trapped fish.
While fascinating, the acoustic mechanisms that enable this behavior are only poorly understood.
We utilized an ensemble-averaged bubbly flow model to faithfully simulate the relevant acoustic phenomena, <a href="https://bryngelson-research.com/papers/bryngelson-JASA-20.pdf" target="_blank">advancing our interpretation of this behavior</a>.
Similar outcomes are desirable for sensitive, implanted biomedical devices.
</div>


<div class="jumbotron" style="padding:3%; padding-bottom:1%; margin-top:3%; margin-bottom:3%">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/shocks.jpg" width="20%" style="float: left;" />
  <h4>Adjoint-based optimization of multi-phase flows</h4>
Biomedical therapy design relies upon efficient optimization algorithms. 
However, traditional methods cannot account for the strong acoustic waves that occur during treatments like shockwave lithotripsy and histotripsy.
I developed a technique to compute the gradient-based information required for such <a href="https://bryngelson-research.com/papers/bryngelson-xpacc18.pdf" target="_blank">optimization and sensitivity analysis</a>.
This tool is numerically consistent and stable.
I coupled this method with our open-source computational tool, Plascom2, which can represent the fluid-structure interactions and multi-physics phenomena critical to many therapies.
</div>


<div class="jumbotron" style="padding:3%; padding-bottom:1%; margin-top:3%; margin-bottom:3%">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/sickle_cells2.jpg" width="20%" style="float: left;" />
  <h4>Deformed and diseased cells</h4>
I have developed simulation-based methods for flows associated with targeted drug delivery therapies and biomicrofluidic devices.
This includes physical models for the cells and particles that make up such flows and numerical techniques that efficiently simulate their flow.
I implemented these in RBC3D, my state-of-the-art flow solver that resolves <a href="https://bryngelson-research.com/papers/bryngelson-PRF-16.pdf" target="_blank">all particle-scale interactions</a> and several <a href="https://bryngelson-research.com/papers/bryngelson-PRF-18.pdf" target="_blank">stability and optimization research tools</a>.
Coupling these tools with novel analysis, I discovered the <a href="https://bryngelson-research.com/papers/bryngelson-RA-16.pdf" target="_blank">rheological mechanism</a> that prevents sickle cells from flowing efficiently, which must also be considered when designing drug delivery particles.
I then showed that these circulatory flows are chaotic, so computational methods cannot predict exact cell locations at long times.
However, the <a href="https://bryngelson-research.com/papers/bryngelson-PRE-19.pdf" target="_blank">data-driven low-order model</a> I developed accurately represents the statistics of the flow, accelerating the design of biomedical devices.
</div>

