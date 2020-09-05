---
title: "Software"
layout: gridlay
sitemap: false
permalink: /software/
---

# Software

<div class="jumbotron">
<center><h4><b>QBMMlib: Quadrature Moment Methods for Fully-coupled Flows</b></h4>
<a href="https://github.com/sbryngelson/QBMMlib" target="_blank"><button class="btn btn-primary btn-sm">GITHUB</button></a>
<a href="https://arxiv.org/abs/2008.05063" target="_blank"><button class="btn btn-danger btn-sm">PAPER</button></a> 
</center>

<b>Developer:</b>
<i>S. H. Bryngelson</i>

QBMMlib is an <a href="https://github.com/sbryngelson/QBMMlib" target="_blank">open source Mathematica package</a> that solves populating balance equations using quadrature-based moment methods.
These methods solve fully-coupled disperse flow and combustion problems.
However, formulating and closing the corresponding governing equations can be complex.
QBMMlib makes analyzing these techniques simple and accessible:
- Symbolic manipulation _automatically formulates_ the moment transport equations for a prescribed population balance equation and dynamical system
- Moment inversion (QMOM) trades the moment set for quadrature nodes and weights 
    - Algorithms options: QMOM, HyQMOM, CQMOM, CHyQMOM, and more
- Quadratures closes the moment transport and governing flow equations 
- Embedded Runge--Kutta algorithms ensure _stable and realizable_ time integration

The algorithm initialization and solution can span _just 13 total lines of code_.
Example notebooks demonstrate solutions to linear harmonic oscillator and nonlinear bubble dynamics problems.
</div>

<div class="jumbotron">
<a href="https://mfc-caltech.github.io" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/mfc-logo2.png" width="33%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px; box-shadow:0px 0px 0px 0px" />
</a>
<center><h4><b>High-fidelity Multiphase Flow Simulation</b></h4>
<a href="https://mfc-caltech.github.io" target="_blank"><button class="btn btn-success btn-sm">WEBSITE</button></a>
<a href="https://github.com/ComputationalFlowPhysics/MFC-Caltech" target="_blank"><button class="btn btn-primary btn-sm">GITHUB</button></a>
<a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-CPC-19.pdf" target="_blank"><button class="btn btn-danger btn-sm">PAPER</button></a> 
</center>

<b>Developers:</b>
<i>S. H. Bryngelson, V. Coralic, K. Schmidmayer, J. S. Spratt, M. Rodriguez, B. Stevens, A. Charalampopoulos, S. Cao, J. Meng, K. Maeda</i>

MFC is an open source parallel simulation software for multi-component, multi-phase, and bubbly flows. 
Its efficient simulation algorithm is capable of efficiently solving a wide range of flows, including droplet atomization, bubble cavitation, and their interactions with strong shocks.
It consists of:
- 5- and 6-equation diffuse-interface models
- High-order-accurate WENO interface-capturing methods
- HLL-type Riemann solvers
- Sub-grid bubble models
- TVD time-integration schemes 

MFC is actively developed and gaining capabilities for QMOM-based solutions to sub-grid flows and neural-network enhanced interface capturing.
</div>

<div class="jumbotron">
<a href="https://code-mphi.github.io/ECOGEN/" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/ecogen.png" width="40%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px; box-shadow:0px 0px 0px 0px;" />
</a>
<center><h4><b>Multiphase and Capillary Flow Solver</b></h4>
<a href="https://code-mphi.github.io/ECOGEN/" target="_blank"><button class="btn btn-success btn-sm">WEBSITE</button></a>
<a href="https://github.com/code-mphi/ECOGEN" target="_blank"><button class="btn btn-primary btn-sm">GITHUB</button></a>
<a href="http://dx.doi.org/10.1016/j.cpc.2019.107093" target="_blank"><button class="btn btn-danger btn-sm">PAPER</button></a> 
</center>

<b>Developers:</b>
<i>K. Schmidmayer, E. Daniel, S. Le Martelot, S. H. Bryngelson, F. Petitpas</i>

ECOGEN is an open source fluid flow simulation tool.
Interface- and shock-capturing methods handle single-phase gas dynamics and multi-phase and multi-physics flows.
Unstructured grids and adaptive mesh refinement (AMR) enable resolution of otherwise inaccessible spatiotemporal scales.
Multiphase ECOGEN simulations regularly scale up to thousands of cores.
The code base is object-oriented and modular, assisting future development.
</div>

<div class="jumbotron">
<a href="https://xpacc-dev.bitbucket.io/PlasCom2/" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/xpacc.png" width="33%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px" />
</a>
<center><h4><b>Plascom2: Multi-physics Turbulent Flows</b></h4>
<a href="https://xpacc-dev.bitbucket.io/PlasCom2/" target="_blank"><button class="btn btn-success btn-sm">WEBSITE</button></a>
</center>

<b>Developers:</b>
<i>M. Campbell, E. Cisneros, S. H. Bryngelson, D. Buchta, M. Anderson, M. Diener, M. Smith</i>

PlasCom2 is a variable-order, single- and multi-block (overset), compressible Navier--Stokes solver. 
It supports hybrid MPI+X massively parallel multiphysics simulation application designed for solving reactive flows on 3D curvilinear domains discretized by multiple, overlapping block-structured grids.
OpenMP handles GPGPU offloading.
PlasCom2 utilizes home-grown libraries to manage these interactions:
* **Pick-Pocket**: Dynamic discovery of intra-application data movement to optimize runtime data motion
* **Hydra**: Offloads OpenMP threads to GPGPUs and manages data movement to/from GPUs
* **TanGram**: Creates and manages architecture-neutral expressions of computational kernels 
* **Leap**: Multi-rate time integration to mitigate grid/timestep limitation disparity due to localized features

PlasCom2 routinely scales to all available processing units on the largest machines in the United States, including modern Sierra-like architectures.
</div>

 
<div class="jumbotron">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/rbc3d.png" width="33%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px" />
<center><h4><b>Spectral Boundary Integral Solver for Cell-scale Flows</b></h4></center>

<b>Developers:</b>
<i>S. H. Bryngelson, H. Zhao, A. Isfahani, J. B. Freund</i>

RBC3D is a flow solver for soft capsules and cells.
It solves the boundary integral form of the Stokes equations via an algorithm well-tailored for cell-scale simulations:
* Spectrally-accurate spherical harmonics represent the deforming surfaces
* Close-contact interactions treated via a modified quadrature approximation of the Green's functions
* A short-range electrostatic-like repulsion ensures that neighboring cells do not intersect
* No-slip boundaries (e.g., vessel walls) imposed via a weak-formulation of the velocity-force equations

These features ensure that RBC3D simulations are efficient. 
Parallel communication (MPI) enables large simulations, such as many cells flowing in a model vascular network.
</div>
