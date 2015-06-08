FGPLVM software
Version 0.11		Tuesday 27 Dec 2005 at 18:17
Copyright (c) 2005 Neil D. Lawrence

The FGPLVM toolbox is a new implementation of the GP-LVM that uses the Pseudo-Input method of Snelson and Ghahramani (NIPS 2005) for sparsification and efficiency improvements. 

Version 0.11
------------

This version now includes the Snelson-Ghahramani approximation (called FITC by Quinonero-Candela and Rasmussen) and the partially independent training criterion (PITC). Additionally the approximations can be used in standard Gaussian process regression.

Version 0.1
-----------

In the first release, only the projected latent variables approximation of Seeger et al is implemented. The toolbox also implements back-constraints as proposed by Lawrence and Quinonero-Candela

The first release containing a couple of examples on the oil data (demOil1.m and demOil2.m) and dynamics (demStick1.m and demStick2.m). The toolbox can load in the C++ files with dynamics associated and (through the mocapResultsCppBvh in the MOCAP toolbox) can run motion capture files with dynamics.

MATLAB Files
------------

Matlab files associated with the toolbox are:

demOil1.m: Oil data with fully independent training conditional.
demOil2.m: Oil data with fully independent training conditional, and MLP back constraints.
demOil3.m: Oil data with deterministic training conditional approximation.
demOil4.m: Oil data with deterministic training conditional, and MLP back constraints.
demOil5.m: Oil data with partially independent training conditional, and MLP back constraints.
demOil6.m: Oil data with partially independent training conditional, and MLP back constraints.
demRobotWireless1.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
demRobotWireless2.m: Wireless Robot data from University of Washington, with back constraints and dynamics.
demRobotWireless3.m: Wireless Robot data from University of Washington with dynamics, but no back constraints.
demRobotWireless4.m: Wireless Robot data from University of Washington with back constraints but no dynamics.
demSpgp1d1.m: Do a simple 1-D regression after Snelson & Ghahramani's example.
demSpgp1d2.m: Do a simple 1-D regression after Snelson & Ghahramani's example.
demSpgp1d3.m: Do a simple 1-D regression after Snelson & Ghahramani's example.
demStick1.m: Model the stick man using an RBF kernel.
demStick2.m: Model the stick man using an RBF kernel and dynamics.
demVowels1.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
fgplvmAddDynamics.m: Add a dynamics kernel to the model.
fgplvmClassVisualise.m: Callback function for visualising data in 2-D.
fgplvmCovGradsTest.m: Test the gradients of the covariance.
fgplvmCreate.m: Create a GPLVM model with inducing varibles.
fgplvmDynamicsFieldPlot.m: 2-D field plot of the dynamics.
fgplvmDynamicsLogLikeGradients.m: Gradients of the dynamics portion.
fgplvmDynamicsPlot.m: 2-D scatter plot of the latent points.
fgplvmDynamicsPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmDynamicsRun.m: Visualise the manifold.
fgplvmDynamicsSample.m: Sample a field from the GP.
fgplvmExpandParam.m: Expand a parameter vector into a GP-LVM model.
fgplvmExtractParam.m: Extract a parameter vector from a GP-LVM model.
fgplvmFieldPlot.m: 2-D field plot of the dynamics.
fgplvmGradient.m: GP-LVM gradient wrapper.
fgplvmKernDynamicsSample.m: Sample a field from a given kernel.
fgplvmLoadResult.m: Load a previously saved result.
fgplvmLogLikeGradients.m: Compute the gradients of the EZFT sparse covariance.
fgplvmLogLikelihood.m: Log-likelihood for a GP-LVM.
fgplvmNearestNeighbour.m: Give the number of errors in latent space for 1 nearest neighbour.
fgplvmObjective.m: Wrapper function for GPLVM objective.
fgplvmOptimise.m: Optimise the inducing variable based kernel.
fgplvmOptimisePoint.m: Optimise the postion of a point.
fgplvmPointGradient.m: Wrapper function for gradient of a single point.
fgplvmPointLogLikeGradient.m: Log-likelihood gradient for of a point of the GP-LVM.
fgplvmPointLogLikelihood.m: Log-likelihood of a point for the GP-LVM.
fgplvmPointObjective.m: Wrapper function for objective of a single point.
fgplvmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmReadFromFID.m: Load from a FID produced by the C++ implementation.
fgplvmReadFromFile.m: Load a file produced by the c++ implementation.
fgplvmResultsDynamic.m: Load a results file and visualise them.
fgplvmTest.m: Test the gradients of the gpCovGrads function and the fgplvm models.
fgplvmVisualise.m: Visualise the manifold.
gpComputeAlpha.m: Update the vector `alpha' for computing posterior mean quickly.
gpCovGrads.m: Sparse objective function gradients wrt Covariance functions for inducing variables.
gpCovGradsTest.m: Test the gradients of the covariance.
gpCreate.m: Create a GP model with inducing varibles/pseudo-inputs.
gpExpandParam.m: Expand a parameter vector into a GP model.
gpExtractParam.m: Extract a parameter vector from a GP model.
gpGradient.m: Gradient wrapper for a GP model.
gpLogLikeGradients.m: Compute the gradients for the parameters and X.
gpLogLikelihood.m: Compute the log likelihood of a GP.
gpObjective.m: Wrapper function for GP objective.
gpOptimise.m: Optimise the inducing variable based kernel.
gpPosteriorGradMeanVar.m: Gadient of the mean and variances of the posterior at points given by X.
gpPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
gpUpdateKernels.m: Update the kernels that are needed.
