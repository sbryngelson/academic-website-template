---
title: "Software"
layout: gridlay
sitemap: false
permalink: /software/
---

# Software

<div class="rowl1">
<a href="https://mfc-caltech.github.io" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/mfc-logo2.png" class="img-responsive" width="33%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px; box-shadow:0px 0px 0px 0px" />
</a>
<center><h4><b>High-fidelity Multiphase Flow Simulation</b></h4></center>

  MFC is a fully-documented open source parallel simulation software for multi-component, multi-phase, and bubbly flows. 
  It is capable of efficiently solving a wide range of flows, including droplet atomization, shock–bubble interaction, and gas bubble cavitation. 
  It includes the 5- and 6-equation thermodynamically-consistent diffuse-interface models to handle such flows, which are coupled to high-order interface-capturing methods, HLL-type Riemann solvers, and TVD time-integration schemes that are capable of simulating unsteady flows with strong shocks. 
  The numerical methods are implemented in a flexible, modular framework that is amenable to future development. 
  The methods are validated via comparisons to experimental results for shock–bubble, shock–droplet, and shock–water cylinder interaction problems and verified to be free of spurious oscillations for material-interface advection and gas–liquid Riemann problems. 
  For smooth solutions, such as the advection of an isentropic vortex, the methods are verified to be high-order accurate.

<ul style="overflow: hidden"></ul>
</div>

<div class="rowl1">

<a href="https://code-mphi.github.io/ECOGEN/" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/ecogen.png" class="img-responsive" width="40%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px; box-shadow:0px 0px 0px 0px;" />
</a>
<center><h4><b>Multiphase and Capillary Flow Solver</b></h4></center>

ECOGEN is an open-source computational fluid dynamics code. 
It is a multi-model tool devoted to the simulation of compressible flows. 
A large range of problems can be solved, from single-phase gas dynamics to multiphase, multiphysics flows including interface problems between pure fluids. 
This code is suited for strongly unsteady flows. 
The numerical solver of ECOGEN is implemented in a flexible structure making the code able to compute such complex flows on different kinds of discretization grids. 
The code solves sets of partial differential equations using diffuse-interface methods. 
The implemented hyperbolic solver is able to deal with Cartesian geometries as well as unstructured grids. 
A recent adaptive mesh refinement method is also implemented. 
Phase change problems (heating or cavitating flows) can be treated with respect to physical conservation principles and thermodynamics consistency.

<!-- * Evolutive, Compressible, Open-Source, Genuine, Easy, N-phase -->
<ul style="overflow: hidden"></ul>
</div>

<div class="rowl1">
<a href="https://xpacc-dev.bitbucket.io/PlasCom2/" target="_blank">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/xpacc.png" class="img-responsive" width="33%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px" />
</a>
<center><h4><b>PlascomCM/Plascom2: Multi-physics Turbulent Flows</b></h4></center>

PlasCom2 is a variable-order, single- and multi-block (overset), compressible Navier-Stokes solver. 
It supports hybrid MPI+X massively parallel multiphysics simulation application designed for solving reactive flows on 1, 2, and 3-dimensional curvilinear domains discretized by multiple, overlapping block-structured grids.
It consists of a C++ infrastructure with computational kernels written in F90 and C++.
Using OpenMP and offloading to GPGPU's where available,   PlasCom2 routinely runs and scales to all available processing units on the largest machines in the United States, including modern Sierra-like architectures.
It uses parallel HDF5 for its IO substrate.
It also takes advantage of home-grown "CS tools":

* **Pick-Pocket**: A library that provides dynamic discovery of intra-application data movement and chooses policies to effectively optimize the runtime data motion for performance.
* **Hydra**: A library that provides functionalities for offloading OpenMP threads to GPGPUs, and utilities for data movement in to/from GPU.
* **TanGram**: Helps create and manage architecture-neutral expressions of computational kernels which can be transformed into architecture-specific versions targeting a specific platform.
* **Leap**: Provides multi-rate time integration which mitigates grid/timestep limitation disparity due to localized features which impose domain-wide timestep limitations.  Leap lets us take different timesteps on different grids.
* **ICE**: The Illinois Computing Environment helps tie it all together by swapping in the various components for depending on which platform (or problem) we target.
ICE can also identify and actuate code transforms to optimize performance.
<ul style="overflow: hidden"></ul>
</div>

 
<div class="rowl1">
<img src="{{ site.url }}{{ site.baseurl }}/images/software/rbc3d.png" class="img-responsive" width="33%" style="display:block; margin-left:auto; margin-right:auto; border-radius: 10px" />
<center><h4><b>Spectral Boundary Integral Solver for Cell-scale Flows</b></h4></center>

RBC3D solves the boundary integral equation form of the Stokes equations using spectral methods. 
This form of the equations only discretizes the boundaries present in this problem, which in this case include model cells and droplets.
No-slip boundary conditions for, e.g., model vessel walls are imposed via a weak-formulation of the velocity-force equations and iterative solve to ensure the surface velocity is nearly zero.
The quadrature is switched to a near-singular formulation when boundaries are close, avoiding the singularity of the associated Green's functions.
A short-range repulsion force, of similar character to electrostatic repulsion present in actual cells, helps ensure that neighboring objects do not intersect.
The equations are solved in parallel via MPI.

<ul style="overflow: hidden"></ul>
</div>

