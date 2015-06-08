FGPLVM software
Version 0.151		Wednesday 14 Feb 2007 at 08:46
Copyright (c) 2007 Neil D. Lawrence

The FGPLVM toolbox is a new implementation of the GP-LVM that uses the Pseudo-Input method of Snelson and Ghahramani (NIPS 2005) for sparsification and efficiency improvements. 

Version 0.151
-------------

In this version results for the CMU Mocap data set from Taylor et al. of subject 35 running and walking are included, as well as some minor changes to allow hierarchical GP-LVMs to be used.

Version 0.15
------------

This version splits the Gaussian process portion into a new GP toolbox, the corresponding version is 0.1. Fixed bug in gpDynamicsExpandParam, gpDynamicsExractParam and gpDynamicsLogLikeGradient where 'fixInducing' option  was not being dealt with.

Fixed bug in fgplvmCreate.m where the back constraints were set up, but the latent positions were not being set according to the back constraints in the returned model.

Version 0.141
-------------

Changed GP-LVM default optimiser to scg rather than conjgrad. Added fgplvmOptimiseSequence and dependent files. This is for optimising a test sequence in the latent space, for the case where there are dynamics on the model.

Version 0.14
------------

Carl Ek implemented multiple sequences in the gpDynamics model used for dynamics in the GPLVM, this was refined and integrated by Neil.

Fixed two bugs in gpPosteriorGradMeanVar which appeared if fitc was used or the scales on the outputs were non-zero. This in turn affected fgplvmOptimisePoint.

Default under back constraints switched to not optimise towards a PCA initialisation.

Fixed bug in fgplvmReadFromFID where the old form of fgplvmCreate was being called.

Version 0.132
-------------

Learning with missing data fully implemented across all models. Two big speed improvements on the fitc approximation (thanks to Ed Snelson for pointing out how slow it was!).

Version 0.131
-------------

Added learning with missing data for the FTC and reversible dynamics model.

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

cmdsRoadData.m: This script uses classical MDS to visualise some road distance data.
demBrendan1.m: Use the GP-LVM to model the Frey face data with back constraints.
demCmu35gplvm1.m: Learn a GPLVM on CMU 35 data set.
demCmu35gplvm2.m: Learn a GPLVM on CMU 35 data set.
demCmu35gplvm3.m: Learn a GPLVM on CMU 35 data set.
demCmu35gplvmReconstruct.m: Reconstruct right leg and body of CMU 35.
demCmu35gplvmReconstructTaylor.m: Reconstruct right leg of CMU 35.
demCmu35TaylorNearestNeighbour.m: Recreate the Nearest Neighbour result from Taylor et al, NIPS 2006.
demFourWalks1.m: Model four seperate walsk using an RBF kernel and dynamics.
demFourWalksReconstruct.m: Reconstruct right leg of CMU 35.
demOil1.m: Oil data with fully independent training conditional.
demOil2.m: Oil data with fully independent training conditional, and MLP back constraints.
demOil3.m: Oil data with deterministic training conditional.
demOil4.m: Oil data with deterministic training conditional, and MLP back constraints.
demOil5.m: Oil data with partially independent training conditional.
demOil6.m: Oil data with partially independent training conditional, and MLP back constraints.
demRobotTraces1.m: Wireless Robot data from University of Washington, with tailored dynamics.
demRobotWireless1.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
demRobotWireless2.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
demRobotWireless3.m: Wireless Robot data from University of Washington with dynamics and no back constraints.
demRobotWireless4.m: Wireless Robot data from University of Washington with dynamics and back constraints.
demRobotWirelessNavigate.m: Take some test data for the robot and navigate with it.
demStick1.m: Model the stick man using an RBF kernel.
demStick2.m: Model the stick man using an RBF kernel and dynamics.
demStick3.m: Model the stick man using an RBF kernel and RBF kernel based back constraints.
demStick4.m: Model the stick man using an RBF kernel and 3-D latent space.
demStick5.m: Model the stick man using an RBF kernel and regressive dynamics.
demTwoClusters1.m:
demVowels1.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints.
demVowels2.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demVowels3.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints, but without PCA initialisation.
demVowelsIsomap.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demVowelsLle.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demWalkSitJogDynamicsLearn.m: Learn the stick man dynamics.
dynamicsTest.m: Run some tests on the specified dynamics model.
fgplvmAddDynamics.m: Add a dynamics kernel to the model.
fgplvmBackConstraintGrad.m: Gradient with respect to back constraints if present.
fgplvmClassVisualise.m: Callback function for visualising data in 2-D.
fgplvmCovGradsTest.m: Test the gradients of the covariance.
fgplvmCreate.m: Create a GPLVM model with inducing variables.
fgplvmDisplay.m: Display an FGPLVM model.
fgplvmDynamicsFieldPlot.m: 2-D field plot of the dynamics.
fgplvmDynamicsPlot.m: 2-D scatter plot of the latent points.
fgplvmDynamicsPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmDynamicsRun.m: Runs auto regressive dynamics in a forward manner.
fgplvmDynamicsSample.m: Sample a field from the GP.
fgplvmExpandParam.m: Expand a parameter vector into a GP-LVM model.
fgplvmExtractParam.m: Extract a parameter vector from a GP-LVM model.
fgplvmFieldPlot.m: 2-D field plot of the dynamics.
fgplvmGradient.m: GP-LVM gradient wrapper.
fgplvmKernDynamicsSample.m: Sample a field from a given kernel.
fgplvmLoadResult.m: Load a previously saved result.
fgplvmLogLikeGradients.m: Compute the gradients for the FGPLVM.
fgplvmLogLikelihood.m: Log-likelihood for a GP-LVM.
fgplvmNearestNeighbour.m: Give the number of errors in latent space for 1 nearest neighbour.
fgplvmObjective.m: Wrapper function for GP-LVM objective.
fgplvmObjectiveGradient.m: Wrapper function for FGPLVM objective and gradient.
fgplvmOptimise.m: Optimise the FGPLVM.
fgplvmOptimisePoint.m: Optimise the postion of a latent point.
fgplvmOptimiseSequence.m: Optimise the postion of a latent sequence.
fgplvmOptions.m: Return default options for FGPLVM model.
fgplvmPointGradient.m: Wrapper function for gradient of a single point.
fgplvmPointLogLikeGradient.m: Log-likelihood gradient for of a point of the GP-LVM.
fgplvmPointLogLikelihood.m: Log-likelihood of a point for the GP-LVM.
fgplvmPointObjective.m: Wrapper function for objective of a single point in latent space and the output location..
fgplvmPointObjectiveGradient.m: Wrapper function for objective and gradient of a single point in latent space and the output location..
fgplvmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmPrintPlot.m: Print latent space for learnt model.
fgplvmReadFromFID.m: Load from a FID produced by the C++ implementation.
fgplvmReadFromFile.m: Load a file produced by the C++ implementation.
fgplvmResultsDynamic.m: Load a results file and visualise them.
fgplvmSequenceGradient.m: Wrapper function for gradient of a latent sequence.
fgplvmSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
fgplvmSequenceLogLikelihood.m: Log-likelihood of a sequence for the GP-LVM.
fgplvmSequenceObjective.m: Wrapper function for objective of a single sequence in latent space and the corresponding output sequence.
fgplvmSequenceObjectiveGradient.m: Wrapper function for objective
fgplvmTaylorAngleErrors.m: Helper function for computing angle errors for CMU 35 data.
fgplvmTest.m: Test the gradients of the gpCovGrads function and the fgplvm models.
fgplvmTestMissing.m: Make sure missing data likelihood match full ones.
fgplvmToolboxes.m: Load in the relevant toolboxes for fgplvm.
fgplvmVisualise.m: Visualise the manifold.
fgplvmViterbiSequence.m: Viterbi align a latent sequence.
gpDynamicsCreate.m: Create the dynamics model. 
gpDynamicsDisplay.m: Display a GP dynamics model.
gpDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
gpDynamicsExtractParam.m: Extract parameters from the GP dynamics model.
gpDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
gpDynamicsLogLikelihood.m: Give the log likelihood of GP dynamics.
gpDynamicsPointLogLikelihood.m: Compute the log likelihood of a point under the GP dynamics model.
gpDynamicsSamp.m: Sample from the dynamics for a given input.
gpDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM dynamics.
gpDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
gpDynamicsSetLatentValues.m: Set the latent values inside the model.
gpReversibleDynamicsCreate.m: Create the dynamics model. 
gpReversibleDynamicsDisplay.m: Display a GP dynamics model.
gpReversibleDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
gpReversibleDynamicsExtractParam.m: Extract parameters from the GP reversible dynamics model.
gpReversibleDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpReversibleDynamicsLogLikeGradients.m: Gradients of the GP reversible dynamics wrt parameters.
gpReversibleDynamicsLogLikelihood.m: Give the log likelihood of the dynamics part.
gpReversibleDynamicsOptions.m: Return default options for GP reversible dynamics model.
gpReversibleDynamicsSamp.m: Sample from the dynamics for a given input.
gpReversibleDynamicsSetLatentValues.m: Set the latent values inside the model.
gpSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
gpTimeDynamicsCreate.m: Create the time dynamics model. 
gpTimeDynamicsDisplay.m: Display a GP time dynamics model.
gpTimeDynamicsExpandParam.m: Place the parameters vector into the model for GP time dynamics.
gpTimeDynamicsExtractParam.m: Extract parameters from the GP time dynamics model.
gpTimeDynamicsLatentGradients.m: Gradients of the X vector given the time dynamics model.
gpTimeDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
gpTimeDynamicsLogLikelihood.m: Give the log likelihood of GP time dynamics.
gpTimeDynamicsOut.m: Evaluate the output of GPTIMEDYNAMICS.
gpTimeDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM time dynamics.
gpTimeDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
gpTimeDynamicsSetLatentValues.m: Set the latent values inside the model.
modelLatentGradients.m: Gradients of the latent variables for dynamics models in the GPLVM.
modelSetLatentValues.m: Set the latent variables for dynamics models in the GPLVM.
robOneDynamicsCreate.m: Create the dynamics model. 
robOneDynamicsDisplay.m: Display the robot dynamics model. 
robOneDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
robOneDynamicsExtractParam.m: Extract parameters from the robot one dynamics model.
robOneDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
robOneDynamicsLogLikeGradients.m: Gradients of the robot one dynamics wrt parameters.
robOneDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
robOneDynamicsSetLatentValues.m: Set the latent values inside the model.
robThreeDynamicsCreate.m: Create the dynamics model. 
robThreeDynamicsDisplay.m: Display the robot dynamics model. 
robThreeDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
robThreeDynamicsExtractParam.m: Extract parameters from the robot three dynamics model.
robThreeDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
robThreeDynamicsLogLikeGradients.m: Gradients of the robot three dynamics wrt parameters.
robThreeDynamicsLogLikelihood.m: Give the log likelihood of the robot three dynamics part.
robThreeDynamicsSetLatentValues.m: Set the latent values inside the model.
robTwoDynamicsCreate.m: Create the dynamics model. 
robTwoDynamicsDisplay.m: Display the robot dynamics model. 
robTwoDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
robTwoDynamicsExtractParam.m: Extract parameters from the robot two dynamics model.
robTwoDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
robTwoDynamicsLogLikeGradients.m: Gradients of the robot two dynamics wrt parameters.
robTwoDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
robTwoDynamicsSetLatentValues.m: Set the latent values inside the model.
