FGPLVM software
Version 0.153		Saturday 11 Oct 2008 at 21:08

The FGPLVM toolbox is a new implementation of the GP-LVM that uses the Pseudo-Input method of Snelson and Ghahramani (NIPS 2005) for sparsification and efficiency improvements. 

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

demVowels2.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
fgplvmSequenceGradient.m: Wrapper function for gradient of a latent sequence.
modelLatentGradients.m: Gradients of the latent variables for dynamics models in the GPLVM.
fgplvmGradient.m: GP-LVM gradient wrapper.
fgplvmLoadResult.m: Load a previously saved result.
gpDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM dynamics.
fgplvmReadFromFID.m: Load from a FID produced by the C++ implementation.
fgplvmPointSampleLogLikelihood.m:
gpReversibleDynamicsOptions.m: Return default options for GP reversible dynamics model.
gpDynamicsSetLatentValues.m: Set the latent values inside the model.
demCmu35gplvm3.m: Learn a GPLVM on CMU 35 data set.
gpReversibleDynamicsCreate.m: Create the dynamics model. 
demStickFgplvm1.m: Model the stick man using an RBF kernel.
gpDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
robOneDynamicsCreate.m: Create the dynamics model. 
fgplvmOptimisePoint.m: Optimise the postion of a latent point.
demFourWalks1.m: Model four seperate walsk using an RBF kernel and dynamics.
fgplvmNearestNeighbour.m: Give the number of errors in latent space for 1 nearest neighbour.
fgplvmAddDynamics.m: Add a dynamics kernel to the model.
gpTimeDynamicsDisplay.m: Display a GP time dynamics model.
cmdsRoadData.m: This script uses classical MDS to visualise some road distance data.
robThreeDynamicsExtractParam.m: Extract parameters from the robot three dynamics model.
fgplvmExtractParam.m: Extract a parameter vector from a GP-LVM model.
demCmu35gplvm4.m: Learn a GPLVM on CMU 35 data set.
fgplvmDisplay.m: Display an FGPLVM model.
demRobotWireless3.m: Wireless Robot data from University of Washington with dynamics and no back constraints.
fgplvmCreate.m: Create a GPLVM model with inducing variables.
fgplvmVisualise.m: Visualise the manifold.
demCmu35SequenceOptimise.m: 
fgplvmOptimise.m: Optimise the FGPLVM.
demOil4.m: Oil data with deterministic training conditional, and MLP back constraints.
robOneDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
demCmu35gplvmReconstruct.m: Reconstruct right leg and body of CMU 35.
gplvmCmu35Animate.m: Animate the test data jointly with predictions.
robTwoDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
fgplvmDynamicsRun.m: Runs auto regressive dynamics in a forward manner.
gpReversibleDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
gpDynamicsDisplay.m: Display a GP dynamics model.
gpDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
fgplvmReadFromFile.m: Load a file produced by the C++ implementation.
demStick4.m: Model the stick man using an RBF kernel and 3-D latent space.
gpDynamicsLogLikelihood.m: Give the log likelihood of GP dynamics.
fgplvmPointGradient.m: Wrapper function for gradient of a single point.
gpTimeDynamicsCreate.m: Create the time dynamics model. 
demCmu35gplvm1.m: Learn a GPLVM on CMU 35 data set.
fgplvmTestMissing.m: Make sure missing data likelihood match full ones.
fgplvmObjective.m: Wrapper function for GP-LVM objective.
demOil3.m: Oil data with deterministic training conditional.
fgplvmPointObjective.m: Wrapper function for objective of a single point in latent space and the output location..
fgplvmFieldPlot.m: 2-D field plot of the dynamics.
demOil1.m: Oil data with fully independent training conditional.
robTwoDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
fgplvmPointLogLikeGradient.m: Log-likelihood gradient for of a point of the GP-LVM.
robTwoDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
fgplvmSequenceObjective.m: Wrapper function for objective of a single sequence in latent space and the corresponding output sequence.
robThreeDynamicsLogLikelihood.m: Give the log likelihood of the robot three dynamics part.
fgplvmCovGradsTest.m: Test the gradients of the covariance.
fgplvmDynamicsPlot.m: 2-D scatter plot of the latent points.
gpTimeDynamicsOut.m: Evaluate the output of GPTIMEDYNAMICS.
demWalkSitJogDynamicsLearn.m: Learn the stick man dynamics.
gpTimeDynamicsLogLikelihood.m: Give the log likelihood of GP time dynamics.
robOneDynamicsLogLikeGradients.m: Gradients of the robot one dynamics wrt parameters.
robOneDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
fgplvmDynamicsPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmObjectiveGradient.m: Wrapper function for FGPLVM objective and gradient.
fgplvmSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
demTwoClusters1.m:
fgplvmPointLogLikelihood.m: Log-likelihood of a point for the GP-LVM.
gpReversibleDynamicsLogLikelihood.m: Give the log likelihood of the dynamics part.
dynamicsTest.m: Run some tests on the specified dynamics model.
demVowelsIsomap.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
modelSetLatentValues.m: Set the latent variables for dynamics models in the GPLVM.
fgplvmClassVisualise.m: Callback function for visualising data in 2-D.
demFourWalksReconstruct.m: Reconstruct right leg of CMU 35.
gpTimeDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
demCmu35gplvm2.m: Learn a GPLVM on CMU 35 data set.
gpDynamicsCreate.m: Create the dynamics model. 
fgplvmOptimiseSequence.m: Optimise the postion of a latent sequence.
fgplvmTaylorAngleErrors.m: Helper function for computing angle errors for CMU 35 data.
demCmu35Animate.m: Animate reconstructed right leg and body.
demOil2.m: Oil data with fully independent training conditional, and MLP back constraints.
demStick3.m: Model the stick man using an RBF kernel and RBF kernel based back constraints.
robOneDynamicsSetLatentValues.m: Set the latent values inside the model.
demCmu35TaylorNearestNeighbour.m: Recreate the Nearest Neighbour result from Taylor et al, NIPS 2006.
gpDynamicsPointLogLikelihood.m: Compute the log likelihood of a point under the GP dynamics model.
fgplvmPrintPlot.m: Print latent space for learnt model.
demStick2.m: Model the stick man using an RBF kernel and dynamics.
gpReversibleDynamicsExtractParam.m: Extract parameters from the GP reversible dynamics model.
gpSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
demRobotWireless2.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
demVowels1.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints.
gpTimeDynamicsExtractParam.m: Extract parameters from the GP time dynamics model.
fgplvmResultsDynamic.m: Load a results file and visualise them.
fgplvmBackConstraintGrad.m: Gradient with respect to back constraints if present.
gpTimeDynamicsSetLatentValues.m: Set the latent values inside the model.
fgplvmSequenceObjectiveGradient.m: Wrapper function for objective
fgplvmKernDynamicsSample.m: Sample a field from a given kernel.
gpReversibleDynamicsSamp.m: Sample from the dynamics for a given input.
demCmu35gplvmReconstructTaylor.m: Reconstruct right leg of CMU 35.
robOneDynamicsExtractParam.m: Extract parameters from the robot one dynamics model.
demOil6.m: Oil data with partially independent training conditional, and MLP back constraints.
gpDynamicsSamp.m: Sample from the dynamics for a given input.
fgplvmExpandParam.m: Expand a parameter vector into a GP-LVM model.
fgplvmDynamicsSample.m: Sample a field from the GP.
robTwoDynamicsLogLikeGradients.m: Gradients of the robot two dynamics wrt parameters.
gpReversibleDynamicsSetLatentValues.m: Set the latent values inside the model.
gpTimeDynamicsLatentGradients.m: Gradients of the X vector given the time dynamics model.
fgplvmCmu35Animate.m: Animate the test data jointly with predictions.
robThreeDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
fgplvmSequenceLogLikelihood.m: Log-likelihood of a sequence for the GP-LVM.
robTwoDynamicsDisplay.m: Display the robot dynamics model. 
fgplvmLogLikeGradients.m: Compute the gradients for the FGPLVM.
demVowelsLle.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
robThreeDynamicsSetLatentValues.m: Set the latent values inside the model.
gpReversibleDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
demRobotWireless1.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
fgplvmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
fgplvmPointObjectiveGradient.m: Wrapper function for objective and gradient of a single point in latent space and the output location..
demRobotTraces1.m: Wireless Robot data from University of Washington, with tailored dynamics.
robTwoDynamicsCreate.m: Create the dynamics model. 
fgplvmOptions.m: Return default options for FGPLVM model.
fgplvmTest.m: Test the gradients of the gpCovGrads function and the fgplvm models.
demOil5.m: Oil data with partially independent training conditional.
robOneDynamicsDisplay.m: Display the robot dynamics model. 
gpReversibleDynamicsLogLikeGradients.m: Gradients of the GP reversible dynamics wrt parameters.
robTwoDynamicsSetLatentValues.m: Set the latent values inside the model.
demStick1.m: Model the stick man using an RBF kernel.
fgplvmDynamicsFieldPlot.m: 2-D field plot of the dynamics.
robThreeDynamicsLogLikeGradients.m: Gradients of the robot three dynamics wrt parameters.
fgplvmLogLikelihood.m: Log-likelihood for a GP-LVM.
demRobotWirelessNavigate.m: Take some test data for the robot and navigate with it.
robThreeDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
gpTimeDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM time dynamics.
gpDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
fgplvmToolboxes.m: Load in the relevant toolboxes for fgplvm.
robOneDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
demStick5.m: Model the stick man using an RBF kernel and regressive dynamics.
demVowels3.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints, but without PCA initialisation.
robTwoDynamicsExtractParam.m: Extract parameters from the robot two dynamics model.
gpReversibleDynamicsDisplay.m: Display a GP dynamics model.
gpTimeDynamicsExpandParam.m: Place the parameters vector into the model for GP time dynamics.
gpDynamicsExtractParam.m: Extract parameters from the GP dynamics model.
demRobotWireless4.m: Wireless Robot data from University of Washington with dynamics and back constraints.
fgplvmViterbiSequence.m: Viterbi align a latent sequence.
gpDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
robThreeDynamicsCreate.m: Create the dynamics model. 
gpTimeDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
robThreeDynamicsDisplay.m: Display the robot dynamics model. 
demBrendan1.m: Use the GP-LVM to model the Frey face data with back constraints.
