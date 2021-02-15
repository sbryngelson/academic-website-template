---
title: "Software"
layout: gridlay
sitemap: false
permalink: /software/
---

<style>
img{
  border-radius: 10px;
}
iframe {
  width: 175px;
  display: inline;
  vertical-align:middle;
  <!-- margin-bottom:5px; -->
  <!-- margin-left:5px; -->
  <!-- border: 1px solid red; -->
}
.col-md-3 {
  margin:0;
  padding:0;
  margin-top:10px;
  margin-bottom:10px;
  display:block;
  overflow:hidden;
  text-align:center;
  display: table-cell;
  height: auto;
  float: none;
  background:white;
  border-radius:20px;
  <!-- border: 1px solid black; -->
}
</style>

## Software

<div class="jumbotron">
<div class="row align-items-end">
<div class="col-md-9 col-sm-12">
<h4><b>QBMMlib: Moment Methods for Fully-coupled Flows</b></h4>
<a href="https://github.com/sbryngelson/QBMMlib" target="_blank"><button class="btn btn-primary btn-sm">GIT: QBMMLIB</button></a>
<a href="https://github.com/sbryngelson/PyQBMMlib" target="_blank"><button class="btn btn-primary btn-sm">GIT: PyQBMMLIB</button></a>
<a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-SoftX-20.pdf" target="_blank"><button class="btn btn-danger btn-sm">PAPER</button></a> 

<b>Author:</b>
<i>S. H. Bryngelson</i>

<b>QBMMlib</b> is an <a href="https://github.com/sbryngelson/QBMMlib" target="_blank">open source Mathematica package</a> for solving populating balance equations with quadrature-based moment methods (QBMMs).
QBMMs are used for fully-coupled disperse flow and combustion problems.
However, formulating and closing the corresponding governing equations can be complex.
QBMMlib makes using these methods simple and accessible:
- Symbolic and automatic formulation of moment transport equations for a population balance equation and dynamical system
- Moment inversion trades moment sets for quadrature points
    - Algorithms: QMOM, HyQMOM, CQMOM, and more
- Quadratures closes the moment transport and governing flow equations 
- Embedded Runge--Kutta algorithms for _realizable_ time integration

The algorithm initialization and solution can span _just 13 lines of code_.
Example notebooks demonstrate QBMMlib on bubble dynamics problems.

<b><a href="https://github.com/sbryngelson/PyQBMMlib" target="_blank">PyQBMMlib:</a></b> With Esteban Cisneros I developed a Python version of QBMMlib that leverages JIT compiling for significantly improved performance.

</div>
<div class="col-md-3 col-sm-12">
  <iframe src="https://player.vimeo.com/video/456290405?autoplay=1&loop=1&autopause=0&muted=1&quality=240p&background=1" height="132px" frameborder="0" allow="autoplay"></iframe>
</div>
</div>
</div>

<div class="jumbotron">
<div class="row align-items-end">
<div class="col-md-9 col-sm-12">
<a href="https://mfc-caltech.github.io" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/mfc-logo2.png" width="50%" />
</a>
<h4><b>High-fidelity Multiphase Flow Simulation</b></h4>
<a href="https://mfc-caltech.github.io" target="_blank"><button class="btn btn-success btn-sm">WEBSITE</button></a>
<a href="https://github.com/ComputationalFlowPhysics/MFC-Caltech" target="_blank"><button class="btn btn-primary btn-sm">GITHUB</button></a>
<a href="{{ site.url }}{{ site.baseurl }}/papers/bryngelson-CPC-19.pdf" target="_blank"><button class="btn btn-danger btn-sm">PAPER</button></a> 

<b>Authors:</b>
<i>S. H. Bryngelson, V. Coralic, K. Schmidmayer, J. S. Spratt, M. Rodriguez, B. Stevens, A. Charalampopoulos, S. Cao, J. Meng, K. Maeda</i>

MFC is an open source parallel simulation software for multi-component, multi-phase, and bubbly flows. 
Its efficient simulation algorithm is capable of solving flows like droplet atomization, bubble cavitation, and their interactions with strong shocks.
The simulation method consists of:
- 5- and 6-equation diffuse-interface models
- High-order-accurate WENO interface-capturing methods
- HLL-type Riemann solvers
- Sub-grid bubble models
- TVD time-integration schemes 

MFC is actively developed and gaining capabilities for QMOM-based solutions to sub-grid flows and neural-network enhanced interface capturing.
</div>
<div class="col-md-3 col-sm-12">
  <iframe src="https://player.vimeo.com/video/455887952?autoplay=1&loop=1&autopause=0&muted=1&quality=240p&background=1" height="126px" frameborder="0" allow="autoplay"></iframe>
  <iframe src="https://player.vimeo.com/video/455888264?autoplay=1&loop=1&autopause=0&muted=1&quality=240p&background=1" height="126px" frameborder="0" allow="autoplay"></iframe>
</div>
</div>
</div>

<div class="jumbotron">
<div class="row align-items-end">
<div class="col-md-9 col-sm-12">
<a href="https://code-mphi.github.io/ECOGEN/" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/ecogen.png" width="60%" />
</a>
<h4><b>Multiphase and Capillary Flow Solver</b></h4>
<a href="https://code-mphi.github.io/ECOGEN/" target="_blank"><button class="btn btn-success btn-sm">WEBSITE</button></a>
<a href="https://github.com/code-mphi/ECOGEN" target="_blank"><button class="btn btn-primary btn-sm">GITHUB</button></a>
<a href="http://dx.doi.org/10.1016/j.cpc.2019.107093" target="_blank"><button class="btn btn-danger btn-sm">PAPER</button></a> 

<b>Authors:</b>
<i>K. Schmidmayer, E. Daniel, S. Le Martelot, S. H. Bryngelson, F. Petitpas</i>

ECOGEN is an open source fluid flow simulation tool.
Interface- and shock-capturing methods handle single-phase gas dynamics and multi-phase and multi-physics flows.
Unstructured grids and adaptive mesh refinement (AMR) enable resolution of otherwise inaccessible spatiotemporal scales.
Multiphase ECOGEN simulations regularly scale up to thousands of cores.
The code base is object-oriented and modular, assisting future development.
</div>
<div class="col-md-3 col-sm-12">
  <iframe src="https://player.vimeo.com/video/456283026?autoplay=1&loop=1&autopause=0&muted=1&quality=240p&background=1" height="180px" frameborder="0" allow="autoplay"></iframe>
  <iframe src="https://player.vimeo.com/video/455889269?autoplay=1&loop=1&autopause=0&muted=1&quality=240p&background=1" height="70px" frameborder="0" allow="autoplay"></iframe>
</div>
</div>
</div>

<div class="jumbotron">
<div class="row align-items-end">
<div class="col-md-9 col-sm-12">
<a href="https://xpacc-dev.bitbucket.io/PlasCom2/" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/xpacc.png" width="50%" />
</a>
<h4><b>PlasCom2: Multi-physics Turbulent Flows</b></h4>
<a href="https://xpacc-dev.bitbucket.io/PlasCom2/" target="_blank"><button class="btn btn-success btn-sm">WEBSITE</button></a>

<b>Authors:</b>
<i>M. Campbell, E. Cisneros, S. H. Bryngelson, D. Buchta, M. Anderson, M. Diener, M. Smith</i>

PlasCom2 is a variable-order, single- and multi-block (overset), compressible Navier--Stokes solver. 
It supports curvilinear domains discretized by multiple, overlapping block-structured grids.
Hybrid MPI+X and OpenMP handle parallel communication and GPGPU offloading.
PlasCom2 utilizes home-grown libraries to manage these interactions:
* **Pick-Pocket**: Dynamic discovery of data movement optimizes data motion
* **Hydra**: Offloads OpenMP threads to GPGPUs, manages data movement
* **TanGram**: Manages architecture-neutral computational kernels 
* **Leap**: Multi-rate time integration to mitigate grid/timestep limitations

PlasCom2 routinely scales to all available processing units on the largest machines in the United States, including modern Sierra-like architectures.
</div>
<div class="col-md-3 col-sm-12">
  <div style="background-color:black;">
  <iframe src="https://player.vimeo.com/video/455887825?autoplay=1&loop=1&autopause=0&muted=1&quality=240p&background=1" height="140px" frameborder="0" allow="autoplay"></iframe>
  <iframe src="https://player.vimeo.com/video/456436051?autoplay=1&loop=1&autopause=0&muted=1&quality=240p&background=1" height="130px" frameborder="0" allow="autoplay"></iframe>
  </div>
</div>
</div>
</div>

 
<div class="jumbotron">
<div class="row align-items-end">
<div class="col-md-9 col-sm-12">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/rbc3d.png" width="50%" />
<h4><b>Spectral Boundary Integral Solver for Cell-scale Flows</b></h4>

<b>Authors:</b>
<i>S. H. Bryngelson, H. Zhao, A. Isfahani, J. B. Freund</i>

RBC3D is a flow solver for soft capsules and cells.
It solves the boundary integral form of the Stokes equations via an algorithm tailored for cell-scale simulations:
* Spectrally-accurate spherical harmonics represent the deforming surfaces
* Modified Green's function approximation used for near-range interactions
* Electrostatic-like repulsion prevents cells from intersecting
* Weak-formulation of no-slip boundary conditions (e.g., vessel walls)

These features ensure that simulations are robust.
Parallel communication (MPI) enables large simulations, such as model vascular networks.
</div>
<div class="col-md-3 col-sm-12">
  <img src="{{site.url}}{{site.baseurl}}/images/respic/network.jpeg" width="175px "/>
</div>
</div>
</div>
