FGPLVM software
Version 0.161		Sunday 06 Sep 2009 at 06:10

The FGPLVM toolbox is a new implementation of the GP-LVM that uses the Pseudo-Input method of Snelson and Ghahramani (NIPS 2005) for sparsification and efficiency improvements. 

Version 0.161
-------------

Updates for running a GPLVM when the inner produce matrix is used (i.e. dimensionality much greater than data points).

Version 0.16
------------

Incorporate Michalis's variational sparse approximation in the toolbox.
Minor changes to fix reading of GPLVM files from latest C++ code.

Version 0.153
-------------

Changes to allow compatibility with SGPLVM and NCCA toolboxes.


Version 0.152
-------------

Bug fix from fgplvmReadFromFID where the values of model.m weren't being computed correctly.

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

gpDynamicsDisplay.m: Display a GP dynamics model.
gpReversibleDynamicsLogLikelihood.m: Give the log likelihood of the dynamics part.
fgplvmOptions.m: Return default options for FGPLVM model.
fgplvmSequenceLogLikelihood.m: Log-likelihood of a sequence for the GP-LVM.
robThreeDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
fgplvmAddConstraint.m: Add latent constraints to FGPLVM model
gpTimeDynamicsCreate.m: Create the time dynamics model. 
robOneDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
modelLatentGradients.m: Gradients of the latent variables for dynamics models in the GPLVM.
fgplvmCovGradsTest.m: Test the gradients of the covariance.
gpReversibleDynamicsSamp.m: Sample from the dynamics for a given input.
robTwoDynamicsSetLatentValues.m: Set the latent values inside the model.
fgplvmDynamicsPlot.m: 2-D scatter plot of the latent points.
demRobotWireless2.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
fgplvmLogLikeGradients.m: Compute the gradients for the FGPLVM.
robThreeDynamicsSetLatentValues.m: Set the latent values inside the model.
gpTimeDynamicsExpandParam.m: Place the parameters vector into the model for GP time dynamics.
demVowels3.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints, but without PCA initialisation.
gpDynamicsSetLatentValues.m: Set the latent values inside the model.
robTwoDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
demRobotWireless4.m: Wireless Robot data from University of Washington with dynamics and back constraints.
demBrendan1.m: Use the GP-LVM to model the Frey face data with back constraints.
demStick2.m: Model the stick man using an RBF kernel and dynamics.
fgplvmGradient.m: GP-LVM gradient wrapper.
demWalkSitJogDynamicsLearn.m: Learn the stick man dynamics.
gpSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
fgplvmTestMissing.m: Make sure missing data likelihood match full ones.
fgplvmCmu35Animate.m: Animate the test data jointly with predictions.
fgplvmPointLogLikeGradient.m: Log-likelihood gradient for of a point of the GP-LVM.
demVowels1.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints.
robTwoDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
gpDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpDynamicsPointLogLikelihood.m: Compute the log likelihood of a point under the GP dynamics model.
gpDynamicsCreate.m: Create the dynamics model. 
fgplvmExpandParam.m: Expand a parameter vector into a GP-LVM model.
robTwoDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
cmdsRoadData.m: This script uses classical MDS to visualise some road distance data.
fgplvmOptimisePoint.m: Optimise the postion of a latent point.
demStick5.m: Model the stick man using an RBF kernel and regressive dynamics.
fgplvmSequenceGradient.m: Wrapper function for gradient of a latent sequence.
demOil4.m: Oil data with deterministic training conditional, and MLP back constraints.
fgplvmTaylorAngleErrors.m: Helper function for computing angle errors for CMU 35 data.
fgplvmDynamicsRun.m: Runs auto regressive dynamics in a forward manner.
fgplvmPointLogLikelihood.m: Log-likelihood of a point for the GP-LVM.
demFourWalks1.m: Model four seperate walsk using an RBF kernel and dynamics.
fgplvmObjective.m: Wrapper function for GP-LVM objective.
demCmu35SequenceOptimise.m: 
fgplvmSequenceObjective.m: Wrapper function for objective of a single sequence in latent space and the corresponding output sequence.
demRobotWireless3.m: Wireless Robot data from University of Washington with dynamics and no back constraints.
fgplvmFieldPlot.m: 2-D field plot of the dynamics.
gpDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
demCmu35gplvmReconstruct.m: Reconstruct right leg and body of CMU 35.
fgplvmReadFromFID.m: Load from a FID produced by the C++ implementation.
gpTimeDynamicsLogLikelihood.m: Give the log likelihood of GP time dynamics.
fgplvmVisualise.m: Visualise the manifold.
gpDynamicsSamp.m: Sample from the dynamics for a given input.
robTwoDynamicsCreate.m: Create the dynamics model. 
fgplvmCreate.m: Create a GPLVM model with inducing variables.
robThreeDynamicsDisplay.m: Display the robot dynamics model. 
gpDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
demCmu35gplvm4.m: Learn a GPLVM on CMU 35 data set.
gpTimeDynamicsLatentGradients.m: Gradients of the X vector given the time dynamics model.
gpReversibleDynamicsDisplay.m: Display a GP dynamics model.
fgplvmKernDynamicsSample.m: Sample a field from a given kernel.
demCmu35Animate.m: Animate reconstructed right leg and body.
robThreeDynamicsLogLikelihood.m: Give the log likelihood of the robot three dynamics part.
demCmu35gplvm2.m: Learn a GPLVM on CMU 35 data set.
robOneDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
robThreeDynamicsExtractParam.m: Extract parameters from the robot three dynamics model.
fgplvmNearestNeighbour.m: Give the number of errors in latent space for 1 nearest neighbour.
robTwoDynamicsExtractParam.m: Extract parameters from the robot two dynamics model.
demStick1.m: Model the stick man using an RBF kernel.
demStick3.m: Model the stick man using an RBF kernel and RBF kernel based back constraints.
demCmu35gplvmReconstructTaylor.m: Reconstruct right leg of CMU 35.
fgplvmTest.m: Test the gradients of the gpCovGrads function and the fgplvm models.
demFourWalksReconstruct.m: Reconstruct right leg of CMU 35.
fgplvmPointObjectiveGradient.m: Wrapper function for objective and gradient of a single point in latent space and the output location..
gpDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
gpTimeDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM time dynamics.
gplvmCmu35Animate.m: Animate the test data jointly with predictions.
demRobotWireless1.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
fgplvmClassVisualise.m: Callback function for visualising data in 2-D.
fgplvmObjectiveGradient.m: Wrapper function for FGPLVM objective and gradient.
gpDynamicsExtractParam.m: Extract parameters from the GP dynamics model.
fgplvmDynamicsFieldPlot.m: 2-D field plot of the dynamics.
robOneDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
demCmu35gplvm1.m: Learn a GPLVM on CMU 35 data set.
robTwoDynamicsDisplay.m: Display the robot dynamics model. 
gpTimeDynamicsExtractParam.m: Extract parameters from the GP time dynamics model.
fgplvmPrintPlot.m: Print latent space for learnt model.
fgplvmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
robOneDynamicsDisplay.m: Display the robot dynamics model. 
fgplvmOptimiseSequence.m: Optimise the postion of a latent sequence.
demVowelsLle.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demCmu35gplvm3.m: Learn a GPLVM on CMU 35 data set.
gpReversibleDynamicsExtractParam.m: Extract parameters from the GP reversible dynamics model.
demOil7.m: Oil data with variational sparse approximation.
demOil1.m: Oil data with fully independent training conditional.
fgplvmExtractParam.m: Extract a parameter vector from a GP-LVM model.
demVowelsIsomap.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
fgplvmDynamicsPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmSequenceObjectiveGradient.m: Wrapper function for objective
fgplvmResultsDynamic.m: Load a results file and visualise them.
fgplvmLoadResult.m: Load a previously saved result.
fgplvmReadFromFile.m: Load a file produced by the C++ implementation.
demOil3.m: Oil data with deterministic training conditional.
fgplvmLogLikelihood.m: Log-likelihood for a GP-LVM.
gpTimeDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
robOneDynamicsSetLatentValues.m: Set the latent values inside the model.
fgplvmAddDynamics.m: Add a dynamics kernel to the model.
gpTimeDynamicsDisplay.m: Display a GP time dynamics model.
robOneDynamicsExtractParam.m: Extract parameters from the robot one dynamics model.
gpDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM dynamics.
fgplvmViterbiSequence.m: Viterbi align a latent sequence.
robOneDynamicsLogLikeGradients.m: Gradients of the robot one dynamics wrt parameters.
demTwoClusters1.m:
robThreeDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpReversibleDynamicsSetLatentValues.m: Set the latent values inside the model.
fgplvmDisplay.m: Display an FGPLVM model.
demVowels2.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demStickFgplvm1.m: Model the stick man using an RBF kernel.
robOneDynamicsCreate.m: Create the dynamics model. 
gpTimeDynamicsSetLatentValues.m: Set the latent values inside the model.
demOil6.m: Oil data with partially independent training conditional, and MLP back constraints.
demCmu35TaylorNearestNeighbour.m: Recreate the Nearest Neighbour result from Taylor et al, NIPS 2006.
gpTimeDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
demRobotTraces1.m: Wireless Robot data from University of Washington, with tailored dynamics.
fgplvmSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
gpTimeDynamicsOut.m: Evaluate the output of GPTIMEDYNAMICS.
robThreeDynamicsCreate.m: Create the dynamics model. 
robTwoDynamicsLogLikeGradients.m: Gradients of the robot two dynamics wrt parameters.
dynamicsTest.m: Run some tests on the specified dynamics model.
robThreeDynamicsLogLikeGradients.m: Gradients of the robot three dynamics wrt parameters.
demOil5.m: Oil data with partially independent training conditional.
fgplvmBackConstraintGrad.m: Gradient with respect to back constraints if present.
demStick4.m: Model the stick man using an RBF kernel and 3-D latent space.
gpReversibleDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpDynamicsLogLikelihood.m: Give the log likelihood of GP dynamics.
gpReversibleDynamicsOptions.m: Return default options for GP reversible dynamics model.
gpReversibleDynamicsCreate.m: Create a reversible dynamics model. 
gpReversibleDynamicsLogLikeGradients.m: Gradients of the GP reversible dynamics wrt parameters.
demRobotWirelessNavigate.m: Take some test data for the robot and navigate with it.
fgplvmPosteriorVar.m: Variances of the posterior at points given by X.
fgplvmPointGradient.m: Wrapper function for gradient of a single point.
gpReversibleDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
fgplvmPointSampleLogLikelihood.m:
fgplvmToolboxes.m: Load in the relevant toolboxes for fgplvm.
modelSetLatentValues.m: Set the latent variables for dynamics models in the GPLVM.
fgplvmDynamicsSample.m: Sample a field from the GP.
demOil2.m: Oil data with fully independent training conditional, and MLP back constraints.
fgplvmPointObjective.m: Wrapper function for objective of a single point in latent space and the output location..
fgplvmOptimise.m: Optimise the FGPLVM.
