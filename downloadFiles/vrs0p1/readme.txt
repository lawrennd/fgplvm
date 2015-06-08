FGPLVM software
Version 0.1		Wednesday 30 Nov 2005 at 01:30
Copyright (c) 2005 Neil D. Lawrence

The FGPLVM toolbox is a new implementation of the GP-LVM that uses the Pseudo-Input method of Snelson and Ghahramani (NIPS 2005) for sparsification and efficiency improvements. In the first release, only the projected latent variables approximation of Seeger et al is implemented. The toolbox also implements back-constraints as proposed by Lawrence and Quinonero-Candela

Version 0.1
-----------

The first release containing a couple of examples on the oil data (demOil1.m and demOil2.m) and dynamics (demStick1.m and demStick2.m). The toolbox can load in the C++ files with dynamics associated and (through the mocapResultsCppBvh in the MOCAP toolbox) can run motion capture files with dynamics.

MATLAB Files
------------

Matlab files associated with the toolbox are:

demOil1.m: Model the oil data with a 2-D FGPLVM using RBF kernel.
demOil100.m: Model the sub-sampled oil data with a 2-D FGPLVM using RBF kernel.
demOil2.m: Model the oil data with a 2-D FGPLVM using RBF kernel.
demStick1.m: Model the stick man using an RBF kernel.
demStick2.m: Model the stick man using an RBF kernel and dynamics.
fgplvmAddDynamics.m: Add a dynamics kernel to the model.
fgplvmClassVisualise.m: Callback function for visualising data in 2-D.
fgplvmCovGrads.m: Sparse objective function gradients wrt Covariance functions for inducing variables.
fgplvmCreate.m: Create a GPLVM model with inducing varibles.
fgplvmDynamicsFieldPlot.m: 2-D field plot of the dynamics.
fgplvmDynamicsLogLikeGradients.m: Gradients of the dynamics portion.
fgplvmDynamicsLogLikelihood.m: Gradients of the dynamics portion of the log likelihood..
fgplvmDynamicsPlot.m: 2-D scatter plot of the latent points.
fgplvmDynamicsPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmDynamicsRun.m: Visualise the manifold.
fgplvmDynamicsSample.m: Sample a field from the GP.
fgplvmExpandParam.m: Expand a parameter vector into a GPLVM EZFT model.
fgplvmExtractParam.m: Extract a parameter vector from a GPLVM EZFT model.
fgplvmFieldPlot.m: 2-D field plot of the dynamics.
fgplvmGradient.m: GPLVM gradient wrapper for the log likelihood in the EZFT approach.
fgplvmLoadResult.m: Load a previously saved result.
fgplvmLogLikeGradients.m: Compute the gradients of the EZFT sparse covariance.
fgplvmLogLikelihood.m: Log-likelihood for the EZFT approach.
fgplvmNearestNeighbour.m: Give the number of errors in latent space for 1 nearest neighbour.
fgplvmObjective.m: Wrapper function for EZFT objective.
fgplvmOptimise.m: Optimise the inducing variable based kernel.
fgplvmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmReadFromFID.m: Load from a FID produced by the C++ implementation.
fgplvmReadFromFile.m: Load a file produced by the c++ implementation.
fgplvmResultsDynamic.m: Load a results file and visualise them.
fgplvmVisualise.m: Visualise the manifold.
