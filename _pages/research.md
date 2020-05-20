---
title: "Research"
layout: gridlay
sitemap: false
permalink: /research/
---

# Research

<div class="rowl1">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/droplets_in_water.jpeg" class="img-responsive" width="20%" style="float: left; border-radius:10px" />
  <h4>Bubble and droplet dynamics</h4>
Ensemble- and volume-averaging are phase-averaged methods for disperse, bubbly flows. While built upon similar assumptions, it is challenging to assess their relative merits. Volume-averaging is an intrinsically deterministic model, for which bubbles are represented in a Lagrangian framework as advected particles, each sampled from a distribution of equilibrium bubble sizes. The dynamic coupling to the liquid phase is modeled through local volume averaging. Ensemble-phase averaging is stochastic, and uses ensemble-averaging to derive mixture-averaged equations and the field equations are evolved in an Eulerian reference frame for the associated bubble properties, each representing bins of an underlying equilibrium distribution. In both cases the equations are closed by solving Rayleigh-Plesset-like equations for the bubble dynamics as forced by the local or mixture-averaged pressure, respectively. Computationally, there are complex tradeoffs between these two approaches, especially for modern, parallel architectures. We assess their relative complexity and cost via high-resolution simulations.
  <ul style="overflow: hidden">
  </ul>
</div>
 

<div class="rowl1">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/microcapsules.jpg" class="img-responsive" width="20%" style="float: left; border-radius:10px" />
  <h4>Microcapsules for drug delivery</h4>
Observations in experiments and simulations show that the kinematic behaviour of an elastic capsule, suspended and rotating in shear flow, depends upon the flow strength, the capsule membrane material properties and its at-rest shape. We developed a linear stability description of the periodically rotating base state of this coupled system, as represented by a boundary integral flow formulation with spherical harmonic basis functions describing the elastic capsule geometry. This gave Floquet multipliers that classified the stability of the capsule motion for varying elastic capillary numbers. Viscous dissipation rapidly damps most perturbations. However, for all cases, a single component grows or decays slowly, depending upon the flow strength, over many periods of the rotation. The transitions in this stability behavior correspond to the different classes of rotating motion observed in previous studies.

<!--We analyzed the stability of a capsule in large-amplitude oscillatory extensional (LAOE) flow, as often used to study the rheology and dynamics of suspensions. Such a flow is typically established in a cross-slot configuration, with the particle (or particles) of interest observed in the stagnation region. However, controlling this configuration is challenging because the flow is unstable. We quantify such an instability for spherical elastic capsules suspended near the stagnation point using a non-modal global Floquet analysis, which is formulated to include full coupling of the capsule-viscous-flow dynamics. The flow is shown to be transiently, though not asymptotically, unstable. For each case considered, two predominant transient instabilities are identified: intra-period growth for translational capsule perturbations and period-to-period growth for certain capsule distortions. The amplitude of the intra-period instability depends linearly on the flow strength and oscillation period, and the period-to-period growth saturates over several periods, commensurate with the asymptotic stability of the flow.-->
  <ul style="overflow: hidden">
  </ul>
</div>


<div class="rowl1">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/whales.jpeg" class="img-responsive" width="20%" style="float: left; border-radius:10px" />
  <h4>Humpback whale bubble-net feeding</h4>
Bubble-net feeding is the sophisticated hunting behavior of some humpback whales. They release air from their blowholes while spiraling downwards, creating a bubbly wall surrounding their prey. Next, they vocalize from the exterior (~188dB), effectively trapping the small fish inside a “wall-of-sound”. Finally, they swim up and through the interior, feeding on the trapped fish. While fascinating, the acoustic mechanisms that enable this behavior are only poorly understood. We utilized an ensemble-averaged bubbly flow model to faithfully simulate the relevant acoustic phenomena, leading to an advanced interpretation of this behavior.
  <ul style="overflow: hidden"> </ul>
</div>


<div class="rowl1">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/shocks.jpg" class="img-responsive" width="20%" style="float: left; border-radius:10px" />
  <h4>Adjoint-based optimization of multi-phase flows</h4>
I investigated the primary challenges in constructing consistent, stable, and accurate solutions to adjoint flow equations in the presence of shocks. The inviscid Burgers’ equation was first tested as a relatively simple PDE that exhibits the primary challenges. Results show that an additional artificial viscosity is required to maintain consistency with analytic adjoint solutions. The adjoint one-dimensional Euler equations were also investigated, though no numerical schemes are provably convergent for their adjoint in the presence of discontinuities. A characteristic-based method is proposed, which transforms the adjoint equations into a more-simple set of uncoupled transport equations, which are in principle no different that the adjoint Burgers' equation. Results show that even highly-dissipative schemes can have inconsistent solutions.
  <ul style="overflow: hidden"> </ul>
</div>


<div class="rowl1">
  <img src="{{ site.url }}{{ site.baseurl }}/images/respic/sickle_cells2.jpg" class="img-responsive" width="20%" style="float: left; border-radius:10px" />
  <h4>Deformed and diseased cells</h4>
A train of red blood cells flowing in a round tube will either advect steadily or break down into a complex and irregular flow, depending upon its degree of confinement. We analyze this apparent instability, including full coupling between the viscous fluid flow and the elastic cell membranes. A linear stability analysis is constructed via a complete set of orthogonal perturbations to a boundary integral formulation of the flow equations. Both transiently and asymptotically amplifying disturbances are identified. Those that amplify transiently have short-wavelength shape distortions that carry significant membrane strain energy. In contrast, asymptotic disturbances are primarily rigid-body-like tilts and translations. It is shown that an intermediate cell-cell spacing of about half a tube diameter suppresses long-time train instability, particularly when the vessel diameter is relatively small. Altering the viscosity ratio between the cytosol fluid within the cell and the suspending fluid is found to be asymptotically destabilizing for both higher and lower viscosity ratios. Altering the cytosol volume away from that of a nominally healthy discocyte alters the stability with complex dependence on train density and vessel diameter. Several of the observations are consistent with a switch from predominantly cell-cell interactions for dense trains and predominantly cell-wall interactions for less dense trains. Direct numerical simulations are used to verify the linear stability analysis and track the perturbation growth into a self-sustaining disordered regime.
  <ul style="overflow: hidden">
  </ul>
</div>

