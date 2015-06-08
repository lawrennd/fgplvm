FGPLVM software
Version 0.13		Friday 20 Jan 2006 at 18:41
Copyright (c) 2006 Neil D. Lawrence

The FGPLVM toolbox is a new implementation of the GP-LVM that uses the Pseudo-Input method of Snelson and Ghahramani (NIPS 2005) for sparsification and efficiency improvements. 

Version 0.13
------------

This version includes a much cleaner way of incorporating different dynamics models. It is released in line two imminent reports on learning large scale Gaussian processes and learning with back constraints.

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
fgplvmKernDynamicsSample.m: Sample a field from a given kernel.
fgplvmTest.m: Test the gradients of the gpCovGrads function and the fgplvm models.
fgplvmClassVisualise.m: Callback function for visualising data in 2-D.
fgplvmCreate.m: Create a GPLVM model with inducing varibles.
fgplvmExpandParam.m: Expand a parameter vector into a GP-LVM model.
fgplvmExtractParam.m: Extract a parameter vector from a GP-LVM model.
fgplvmGradient.m: GP-LVM gradient wrapper.
fgplvmLoadResult.m: Load a previously saved result.
fgplvmLogLikeGradients.m: Compute the gradients of the EZFT sparse covariance.
fgplvmLogLikelihood.m: Log-likelihood for a GP-LVM.
fgplvmNearestNeighbour.m: Give the number of errors in latent space for 1 nearest neighbour.
fgplvmObjective.m: Wrapper function for GPLVM objective.
fgplvmOptimise.m: Optimise the inducing variable based kernel.
fgplvmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmReadFromFID.m: Load from a FID produced by the C++ implementation.
fgplvmReadFromFile.m: Load a file produced by the c++ implementation.
fgplvmResultsDynamic.m: Load a results file and visualise them.
fgplvmVisualise.m: Visualise the manifold.
demStick2.m: Model the stick man using an RBF kernel and dynamics.
fgplvmAddDynamics.m: Add a dynamics kernel to the model.
fgplvmDynamicsFieldPlot.m: 2-D field plot of the dynamics.
demRobotWirelessNavigate.m: Take some test data for the robot and navigate with it.
fgplvmDynamicsPlot.m: 2-D scatter plot of the latent points.
demStick1.m: Model the stick man using an RBF kernel.
fgplvmDynamicsRun.m: Visualise the manifold.
fgplvmDynamicsSample.m: Sample a field from the GP.
fgplvmFieldPlot.m: 2-D field plot of the dynamics.
demRobotWireless3.m: Wireless Robot data from University of Washington with dynamics and no back constraints.
demOil2.m: Oil data with fully independent training conditional, and MLP back constraints.
demVowels1.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demSpgp1d4.m: Do a simple 1-D regression after Snelson & Ghahramani's example.
fgplvmCovGradsTest.m: Test the gradients of the covariance.
demOil3.m: Oil data with deterministic training conditional.
demOil4.m: Oil data with deterministic training conditional, and MLP back constraints.
demOil5.m: Oil data with partially independent training conditional.
gpOut.m: Evaluate the output of an Gaussian process model.
gpScaleBiasGradient.m: Compute the gradient of the scale and bias.
gpOptions.m: Return default options for FGPLVM model.
demRobotWireless2.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
demRobotWireless4.m: Wireless Robot data from University of Washington with dynamics and back constraints.
demRobotWireless1.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
fgplvmDynamicsPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmOptimisePoint.m: Optimise the postion of a point.
fgplvmPointGradient.m: Wrapper function for gradient of a single point.
fgplvmPointLogLikelihood.m: Log-likelihood of a point for the GP-LVM.
fgplvmPointLogLikeGradient.m: Log-likelihood gradient for of a point of the GP-LVM.
fgplvmPointObjective.m: Wrapper function for objective of a single point.
demOil6.m: Oil data with partially independent training conditional, and MLP back constraints.
demSpgp1d1.m: Do a simple 1-D regression after Snelson & Ghahramani's example.
demSpgp1d2.m: Do a simple 1-D regression after Snelson & Ghahramani's example.
demSpgp1d3.m: Do a simple 1-D regression after Snelson & Ghahramani's example.
gpDynamicsDisplay.m: Display a GP dynamics model.
gpPosteriorMeanCovar.m: Mean and covariances of the posterior at points given by X.
gpComputeAlpha.m: Update the vector `alpha' for computing posterior mean quickly.
gpCovGrads.m: Sparse objective function gradients wrt Covariance functions for inducing variables.
gpCovGradsTest.m: Test the gradients of the covariance.
gpCreate.m: Create a GP model with inducing varibles/pseudo-inputs.
gpExpandParam.m: Expand a parameter vector into a GP model.
gpGradient.m: Gradient wrapper for a GP model.
gpLogLikeGradients.m: Compute the gradients for the parameters and X.
gpLogLikelihood.m: Compute the log likelihood of a GP.
gpObjective.m: Wrapper function for GP objective.
gpOptimise.m: Optimise the inducing variable based kernel.
gpPosteriorGradMeanVar.m: Gadient of the mean and variances of the posterior at points given by X.
gpPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
gpUpdateKernels.m: Update the kernels that are needed.
gpDynamicsSamp.m: Sample from the dynamics for a given input.
gpComputeM.m: Compute the matrix m given the model.
gpExtractParam.m: Extract a parameter vector from a GP model.
gpDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
gpDynamicsExtractParam.m: Extract parameters from the GP dynamics model.
gpDynamicsCreate.m: Create the dynamics model. 
demWalkSitJog1.m: Model the stick man using an RBF kernel.
demOilTest.m: Take some test data for the robot and navigate with it.
gpDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
gpDynamicsLogLikelihood.m: Give the log likelihood of the dynamics part.
gpDynamicsSetLatentValues.m: Set the latent values inside the model.
modelLatentGradients.m: Gradients of the latent variables for dynamics models in the GPLVM.
modelSetLatentValues.m: Set the latent variables for dynamics models in the GPLVM.
robOneDynamicsCreate.m: Create the dynamics model. 
robOneDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
robOneDynamicsExtractParam.m: Extract parameters from the robot one dynamics model.
robOneDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
robOneDynamicsLogLikeGradients.m: Gradients of the robot one dynamics wrt parameters.
robOneDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
robOneDynamicsSetLatentValues.m: Set the latent values inside the model.
robTwoDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
robTwoDynamicsCreate.m: Create the dynamics model. 
robTwoDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
robTwoDynamicsExtractParam.m: Extract parameters from the robot two dynamics model.
robTwoDynamicsLogLikeGradients.m: Gradients of the robot two dynamics wrt parameters.
robTwoDynamicsSetLatentValues.m: Set the latent values inside the model.
robTwoDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
demWalkSitJog2.m: Model the stick man using an RBF kernel.
dynamicsTest.m: Run some tests on the specified dynamics model.
cmdsRoadData.m: This script uses classical MDS to visualise some road distance data.
demStick3.m: Model the stick man using an RBF kernel and mlp back constraints.
fgplvmOptions.m: Return default options for FGPLVM model.
fgplvmDisplay.m: Display an FGPLVM model.
gpDisplay.m: Display a Gaussian process model.
robOneDynamicsDisplay.m: Display the robot dynamics model. 
robTwoDynamicsDisplay.m: Display the robot dynamics model. 
demStick4.m: Model the stick man using an RBF kernel and 3-D latent space.
demVowels2.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints.
fgplvmPrintPlot.m: Print latent space for learnt model.
demSpgp1dPlot.m: Plot results from 1-D sparse GP.
demVowels3.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints, but without PCA initialisation.
