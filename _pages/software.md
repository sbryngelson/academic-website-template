---
title: "Software"
layout: gridlay
sitemap: false
permalink: /software/
---

# Software

<div class="rowl1">
<img src="{{ site.url }}{{ site.baseurl }}/images/respic/droplets_in_water.jpeg" class="img-responsive" width="20%" style="float: left; border-radius: 10px" />
### <a href="https://mfc-caltech.github.io" target="_blank">MFC: Multicomponent Flow Code</a>
  MFC is a fully-documented open source parallel simulation software for multi-component, multi-phase, and bubbly flows. 
  It is capable of efficiently solving a wide range of flows, including droplet atomization, shock–bubble interaction, and gas bubble cavitation. 
  It includes the 5- and 6-equation thermodynamically-consistent diffuse-interface models to handle such flows, which are coupled to high-order interface-capturing methods, HLL-type Riemann solvers, and TVD time-integration schemes that are capable of simulating unsteady flows with strong shocks. 
  The numerical methods are implemented in a flexible, modular framework that is amenable to future development. 
  The methods are validated via comparisons to experimental results for shock–bubble, shock–droplet, and shock–water cylinder interaction problems and verified to be free of spurious oscillations for material-interface advection and gas–liquid Riemann problems. 
  For smooth solutions, such as the advection of an isentropic vortex, the methods are verified to be high-order accurate.
* Multi-scale and multi-phase flow solver 
* Multi-physics support
* Material interface sharpening
* MPI support, parallel I/O---preserves strong scaling
* High-order reconstruction and interface capturing
* Characteristic-based boundary conditions
<ul style="overflow: hidden"></ul>
</div>

<div class="rowl1">
<img src="{{ site.url }}{{ site.baseurl }}/images/respic/droplets_in_water.jpeg" class="img-responsive" width="20%" style="float: left; border-radius: 10px" />
### <a href="https://code-mphi.github.io/ECOGEN/" target="_blank">ECOGEN: Multiphase and Capillary Flow Solver</a>
* Evolutive, Compressible, Open-Source, Genuine, Easy, N-phase
* Multi-physics compressible flows
* Supports unstructured meshes
* Non-oscillatory diffuse interface method
* Adaptive mesh refinement with load balancing
* Capillary effects
<ul style="overflow: hidden"></ul>
</div>

<div class="rowl1">
<img src="{{ site.url }}{{ site.baseurl }}/images/respic/droplets_in_water.jpeg" class="img-responsive" width="20%" style="float: left; border-radius: 10px" />
### <a href="https://xpacc-dev.bitbucket.io/PlasCom2/" target="_blank">PlascomCM/Plascom2: Multi-physics Turbulent Flows</a>
* Parallel Navier--Stokes solver
* Supports fluid-structure interaction
* Strong-shock capturing
* Large-eddy turbulence models 
* Support for chemical reactions via Cantera
* Unstructured grids
<ul style="overflow: hidden"></ul>
</div>

 
<div class="rowl1">
<img src="{{ site.url }}{{ site.baseurl }}/images/respic/droplets_in_water.jpeg" class="img-responsive" width="20%" style="float: left; border-radius: 10px" />
### RBC3D: Spectral Boundary Integral Solver
* Solver for flexible objects and surfaces
* Spectral accuracy (spherical harmonics)
* Boundary conditions imposed via weak formulation
* Constitutive laws for capsules, cells, and droplets
<ul style="overflow: hidden"></ul>
</div>

