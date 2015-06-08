FGPLVM software
Version 0.163		Wednesday 19 May 2010 at 10:04

The FGPLVM toolbox is a faster implementation of the GP-LVM. It uses
sparse variants of Gaussian processes that include the Pseudo-Input
method of Snelson and Ghahramani (NIPS 2005) and the sparse
variational approach of Titsias (AISTATS 2009) for sparsification and
efficiency improvements.

Version 0.163
-------------

Changes for compatibility with new SGPLVM toolbox by Carl Henrik Ek.

Version 0.162
-------------

Added new files fgplvmWriteResults fgplvmLoadResults for saving
smaller model files.

Version 0.161
-------------

Updates for running a GPLVM when the inner produce matrix is used
(i.e. dimensionality much greater than data points).

Version 0.16
------------

Incorporate Michalis's variational sparse approximation in the toolbox.
Minor changes to fix reading of GPLVM files from latest C++ code.

Version 0.153
-------------

Changes to allow compatibility with SGPLVM and NCCA toolboxes.


Version 0.152
-------------

Bug fix from fgplvmReadFromFID where the values of model.m weren't
being computed correctly.

Version 0.151
-------------

In this version results for the CMU Mocap data set from Taylor et
al. of subject 35 running and walking are included, as well as some
minor changes to allow hierarchical GP-LVMs to be used.

Version 0.15
------------

This version splits the Gaussian process portion into a new GP
toolbox, the corresponding version is 0.1. Fixed bug in
gpDynamicsExpandParam, gpDynamicsExractParam and
gpDynamicsLogLikeGradient where 'fixInducing' option was not being
dealt with.

Fixed bug in fgplvmCreate.m where the back constraints were set up,
but the latent positions were not being set according to the back
constraints in the returned model.

Version 0.141
-------------

Changed GP-LVM default optimiser to scg rather than conjgrad. Added
fgplvmOptimiseSequence and dependent files. This is for optimising a
test sequence in the latent space, for the case where there are
dynamics on the model.

Version 0.14
------------

Carl Henrik Ek implemented multiple sequences in the gpDynamics model
used for dynamics in the GPLVM, this was refined and integrated by
Neil.

Fixed two bugs in gpPosteriorGradMeanVar which appeared if fitc was
used or the scales on the outputs were non-zero. This in turn affected
fgplvmOptimisePoint.

Default under back constraints switched to not optimise towards a PCA
initialisation.

Fixed bug in fgplvmReadFromFID where the old form of fgplvmCreate was
being called.

Version 0.132
-------------

Learning with missing data fully implemented across all models. Two
big speed improvements on the fitc approximation (thanks to Ed Snelson
for pointing out how slow it was!).

Version 0.131
-------------

Added learning with missing data for the FTC and reversible dynamics
model.

Version 0.13
------------

This version includes a much cleaner way of incorporating different
dynamics models. It is released in line two imminent reports on
learning large scale Gaussian processes and learning with back
constraints.

Version 0.11
------------

This version now includes the Snelson-Ghahramani approximation (called
FITC by Quinonero-Candela and Rasmussen) and the partially independent
training criterion (PITC). Additionally the approximations can be used
in standard Gaussian process regression.

Version 0.1
-----------

In the first release, only the projected latent variables
approximation of Seeger et al is implemented. The toolbox also
implements back-constraints as proposed by Lawrence and
Quinonero-Candela

The first release containing a couple of examples on the oil data
(demOil1.m and demOil2.m) and dynamics (demStick1.m and
demStick2.m). The toolbox can load in the C++ files with dynamics
associated and (through the mocapResultsCppBvh in the MOCAP toolbox)
can run motion capture files with dynamics.


MATLAB Files
------------

Matlab files associated with the toolbox are:

demVowelsFgplvm3.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints, but without PCA initialisation.
gpDynamicsDisplay.m: Display a GP dynamics model.
gpReversibleDynamicsLogLikelihood.m: Give the log likelihood of the dynamics part.
fgplvmOptions.m: Return default options for FGPLVM model.
fgplvmSequenceLogLikelihood.m: Log-likelihood of a sequence for the GP-LVM.
robThreeDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
demVowelsFgplvm1.m: Model the vowels data with a 2-D FGPLVM using RBF kernel and back constraints.
fgplvmAddConstraint.m: Add latent constraints to FGPLVM model
gpTimeDynamicsCreate.m: Create the time dynamics model. 
robOneDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
modelLatentGradients.m: Gradients of the latent variables for dynamics models in the GPLVM.
fgplvmCovGradsTest.m: Test the gradients of the covariance.
demRobotWirelessFgplvm1.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
gpReversibleDynamicsSamp.m: Sample from the dynamics for a given input.
robTwoDynamicsSetLatentValues.m: Set the latent values inside the model.
fgplvmDynamicsPlot.m: 2-D scatter plot of the latent points.
demOilFgplvm2.m: Oil data with fully independent training conditional, and MLP back constraints.
fgplvmLogLikeGradients.m: Compute the gradients for the FGPLVM.
robThreeDynamicsSetLatentValues.m: Set the latent values inside the model.
gpTimeDynamicsExpandParam.m: Place the parameters vector into the model for GP time dynamics.
gpDynamicsSetLatentValues.m: Set the latent values inside the model.
robTwoDynamicsExpandParam.m: Place the parameters vector into the model for first robot dynamics.
fgplvmGradient.m: GP-LVM gradient wrapper.
demWalkSitJogDynamicsLearn.m: Learn the stick man dynamics.
gpSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
fgplvmTestMissing.m: Make sure missing data likelihood match full ones.
demRobotWirelessFgplvm3.m: Wireless Robot data from University of Washington with dynamics and no back constraints.
fgplvmCmu35Animate.m: Animate the test data jointly with predictions.
fgplvmPointLogLikeGradient.m: Log-likelihood gradient for of a point of the GP-LVM.
robTwoDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
gpDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpDynamicsPointLogLikelihood.m: Compute the log likelihood of a point under the GP dynamics model.
fgplvmWriteResult.m: Write a FGPLVM result.
gpDynamicsCreate.m: Create the dynamics model. 
fgplvmExpandParam.m: Expand a parameter vector into a GP-LVM model.
robTwoDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
cmdsRoadData.m: This script uses classical MDS to visualise some road distance data.
demVowelsFgplvm2.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
fgplvmOptimisePoint.m: Optimise the postion of a latent point.
fgplvmSequenceGradient.m: Wrapper function for gradient of a latent sequence.
demOilFgplvm9.m: Oil data with three dimensions and variational sparse approximation.
fgplvmTaylorAngleErrors.m: Helper function for computing angle errors for CMU 35 data.
fgplvmDynamicsRun.m: Runs auto regressive dynamics in a forward manner.
fgplvmPointLogLikelihood.m: Log-likelihood of a point for the GP-LVM.
demFourWalks1.m: Model four seperate walsk using an RBF kernel and dynamics.
fgplvmObjective.m: Wrapper function for GP-LVM objective.
demCmu35SequenceOptimise.m: 
fgplvmSequenceObjective.m: Wrapper function for objective of a single sequence in latent space and the corresponding output sequence.
demOil100Fgplvm1.m: Oil100 data with fully independent training conditional.
demOilFgplvm3.m: Oil data with deterministic training conditional.
fgplvmFieldPlot.m: 2-D field plot of the dynamics.
gpDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
demBrendanPpca1.m: Use PPCA to model the Frey face data with five latent dimensions.
demCmu35gplvmReconstruct.m: Reconstruct right leg and body of CMU 35.
fgplvmReadFromFID.m: Load from a FID produced by the C++ implementation.
gpTimeDynamicsLogLikelihood.m: Give the log likelihood of GP time dynamics.
fgplvmResultsCpp.m: Load a results file and visualise them.
fgplvmVisualise.m: Visualise the manifold.
gpDynamicsSamp.m: Sample from the dynamics for a given input.
robTwoDynamicsCreate.m: Create the dynamics model. 
fgplvmCreate.m: Create a GPLVM model with inducing variables.
demStickFgplvm5.m: Model the stick man using an RBF kernel and regressive dynamics.
robThreeDynamicsDisplay.m: Display the robot dynamics model. 
gpDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
demOilFgplvm7.m: Oil data with variational sparse approximation.
demCmu35gplvm4.m: Learn a GPLVM on CMU 35 data set.
gpTimeDynamicsLatentGradients.m: Gradients of the X vector given the time dynamics model.
gpReversibleDynamicsDisplay.m: Display a GP dynamics model.
fgplvmKernDynamicsSample.m: Sample a field from a given kernel.
demCmu35Animate.m: Animate reconstructed right leg and body.
robThreeDynamicsLogLikelihood.m: Give the log likelihood of the robot three dynamics part.
robOneDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
demStickFgplvm3.m: Model the stick man using an RBF kernel and RBF kernel based back constraints.
robThreeDynamicsExtractParam.m: Extract parameters from the robot three dynamics model.
demOilFgplvm5.m: Oil data with partially independent training conditional.
fgplvmNearestNeighbour.m: Give the number of errors in latent space for 1 nearest neighbour.
demBrendanFgplvm3.m: Use the GP-LVM to model the Frey face data with DTCVAR.
robTwoDynamicsExtractParam.m: Extract parameters from the robot two dynamics model.
demCmu35gplvmReconstructTaylor.m: Reconstruct right leg of CMU 35.
fgplvmTest.m: Test the gradients of the gpCovGrads function and the fgplvm models.
demFourWalksReconstruct.m: Reconstruct right leg of CMU 35.
demStickFgplvm2.m: Model the stick man using an RBF kernel and dynamics.
demCmu35gplvmFgplvm3.m: Learn a GPLVM on CMU 35 data set.
demStickFgplvm4.m: Model the stick man using an RBF kernel and 3-D latent space.
fgplvmPointObjectiveGradient.m: Wrapper function for objective and gradient of a single point in latent space and the output location..
gpDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
demBrendanFgplvm1.m: Use the GP-LVM to model the Frey face data with FITC.
gpTimeDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM time dynamics.
gplvmCmu35Animate.m: Animate the test data jointly with predictions.
fgplvmClassVisualise.m: Callback function for visualising data in 2-D.
fgplvmObjectiveGradient.m: Wrapper function for FGPLVM objective and gradient.
gpDynamicsExtractParam.m: Extract parameters from the GP dynamics model.
fgplvmDynamicsFieldPlot.m: 2-D field plot of the dynamics.
robOneDynamicsLogLikelihood.m: Give the log likelihood of the robot one dynamics part.
robTwoDynamicsDisplay.m: Display the robot dynamics model. 
gpTimeDynamicsExtractParam.m: Extract parameters from the GP time dynamics model.
fgplvmPrintPlot.m: Print latent space for learnt model.
demBrendanFgplvm4.m: Use the GP-LVM to model the Frey face data with DTCVAR and back constraints.
fgplvmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
robOneDynamicsDisplay.m: Display the robot dynamics model. 
fgplvmReconstruct.m: Reconstruct an FGPLVM from component parts.
fgplvmOptimiseSequence.m: Optimise the postion of a latent sequence.
demVowelsLle.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demOil100Fgplvm2.m: Oil100 data with FGPLVM.
gpReversibleDynamicsExtractParam.m: Extract parameters from the GP reversible dynamics model.
fgplvmExtractParam.m: Extract a parameter vector from a GP-LVM model.
demVowelsIsomap.m: Model the vowels data with a 2-D FGPLVM using RBF kernel.
demOilFgplvm8.m: Oil data with variational sparse approximation.
fgplvmDynamicsPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
demOilFgplvm4.m: Oil data with deterministic training conditional, and MLP back constraints.
fgplvmSequenceObjectiveGradient.m: Wrapper function for objective
fgplvmResultsDynamic.m: Load a results file and visualise them.
fgplvmLoadResult.m: Load a previously saved result.
fgplvmReadFromFile.m: Load a file produced by the C++ implementation.
fgplvmLogLikelihood.m: Log-likelihood for a GP-LVM.
gpTimeDynamicsLogLikeGradients.m: Gradients of the GP dynamics wrt parameters.
robOneDynamicsSetLatentValues.m: Set the latent values inside the model.
fgplvmAddDynamics.m: Add a dynamics kernel to the model.
gpTimeDynamicsDisplay.m: Display a GP time dynamics model.
robOneDynamicsExtractParam.m: Extract parameters from the robot one dynamics model.
demOilFgplvm1.m: Oil data with fully independent training conditional.
gpDynamicsSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM dynamics.
demCmu35gplvmFgplvm2.m: Learn a GPLVM on CMU 35 data set.
fgplvmViterbiSequence.m: Viterbi align a latent sequence.
robOneDynamicsLogLikeGradients.m: Gradients of the robot one dynamics wrt parameters.
demTwoClusters1.m:
robThreeDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
demRobotWirelessFgplvm4.m: Wireless Robot data from University of Washington with dynamics and back constraints.
gpReversibleDynamicsSetLatentValues.m: Set the latent values inside the model.
fgplvmDisplay.m: Display an FGPLVM model.
demCmu35gplvmFgplvm1.m: Learn a GPLVM on CMU 35 data set.
demStickFgplvm1.m: Model the stick man using an RBF kernel.
robOneDynamicsCreate.m: Create the dynamics model. 
gpTimeDynamicsSetLatentValues.m: Set the latent values inside the model.
demCmu35TaylorNearestNeighbour.m: Recreate the Nearest Neighbour result from Taylor et al, NIPS 2006.
gpTimeDynamicsSequenceLogLikelihood.m: Return the log likelihood of a given latent sequence.
demRobotTraces1.m: Wireless Robot data from University of Washington, with tailored dynamics.
demOilFgplvm6.m: Oil data with partially independent training conditional, and MLP back constraints.
fgplvmSequenceLogLikeGradient.m: Log-likelihood gradient for of a sequence of the GP-LVM.
demRobotWirelessFgplvm2.m: Wireless Robot data from University of Washington, without dynamics and without back constraints.
gpTimeDynamicsOut.m: Evaluate the output of GPTIMEDYNAMICS.
robThreeDynamicsCreate.m: Create the dynamics model. 
robTwoDynamicsLogLikeGradients.m: Gradients of the robot two dynamics wrt parameters.
dynamicsTest.m: Run some tests on the specified dynamics model.
robThreeDynamicsLogLikeGradients.m: Gradients of the robot three dynamics wrt parameters.
demBrendanFgplvm5.m: Use the GP-LVM to model the Frey face data with DTCVAR and five latent dimensions..
fgplvmBackConstraintGrad.m: Gradient with respect to back constraints if present.
fgplvmDeconstruct.m: break FGPLVM in pieces for saving.
gpReversibleDynamicsLatentGradients.m: Gradients of the X vector given the dynamics model.
gpDynamicsLogLikelihood.m: Give the log likelihood of GP dynamics.
gpReversibleDynamicsOptions.m: Return default options for GP reversible dynamics model.
gpReversibleDynamicsCreate.m: Create a reversible dynamics model. 
gpReversibleDynamicsLogLikeGradients.m: Gradients of the GP reversible dynamics wrt parameters.
demRobotWirelessNavigate.m: Take some test data for the robot and navigate with it.
fgplvmPosteriorVar.m: Variances of the posterior at points given by X.
demBrendanFgplvm2.m: Use the GP-LVM to model the Frey face data with FITC and back constraints.
fgplvmPointGradient.m: Wrapper function for gradient of a single point.
gpReversibleDynamicsExpandParam.m: Place the parameters vector into the model for GP dynamics.
fgplvmPointSampleLogLikelihood.m:
fgplvmToolboxes.m: Load in the relevant toolboxes for fgplvm.
modelSetLatentValues.m: Set the latent variables for dynamics models in the GPLVM.
fgplvmDynamicsSample.m: Sample a field from the GP.
fgplvmPointObjective.m: Wrapper function for objective of a single point in latent space and the output location..
fgplvmOptimise.m: Optimise the FGPLVM.
