# HCP-Aging_commonality

**The (Limited?) Utility of Brain Age as a Biomarker for Capturing Fluid Cognition in Older Individuals**

_https://doi.org/10.7554/eLife.87297.2_

Abstract
Fluid cognition usually declines as people grow older. For decades, neuroscientists have been on a quest to search for a biomarker that can help capture fluid cognition. One well-known candidate is Brain Age, or a predicted value based on machine-learning models built to predict chronological age from brain MRI data. Here we aim to formally evaluate the utility of Brain Age as a biomarker for capturing fluid cognition among older individuals. Using 504 aging participants (36-100 years old) from the Human Connectome Project in Aging, we created 26 age-prediction models for Brain Age based on different combinations of MRI modalities. We first tested how much Brain Age from these age-prediction models added to what we had already known from a person’s chronological age in capturing fluid cognition. Based on the commonality analyses, we found a large degree of overlap between Brain Age and chronological age, so much so that, at best, Brain Age could uniquely add only around 1.6% in explaining variation in fluid cognition. Next, the age-prediction models that performed better at predicting chronological age did NOT necessarily create better Brain Age for capturing fluid cognition over and above chronological age. Instead, better-performing age-prediction models created Brain Age that overlapped larger with chronological age, up to around 29% out of 32%, in explaining fluid cognition, thus not improving the models’ utility to capture cognitive abilities. Lastly, we tested how much Brain Age missed the variation in the brain MRI that could explain fluid cognition. To capture this variation in the brain MRI that explained fluid cognition, we computed Brain Cognition, or a predicted value based on prediction models built to directly predict fluid cognition (as opposed to chronological age) from brain MRI data. We found that Brain Cognition captured up to an additional 11% of the total variation in fluid cognition that was missing from the model with only Brain Age and chronological age, leading to around a 1/3-time improvement of the total variation explained. Accordingly, we demonstrated the limited utility of Brain Age as a biomarker for fluid cognition and made some suggestions to ensure the utility of Brain Age in explaining fluid cognition and other phenotypes of interest.


Note, users will need to edit these scripts, so that the designated folders and files match with their local settings.

Prerequisite software for our script: wb_command (HCP Workbench Command) (v1.5.0, https://www.humanconnectome.org/software/connectome-workbench) FSL (6.0.5, https://fsl.fmrib.ox.ac.uk/fsl/fslwiki)

The several files were borrowed from other different projects:

MMP_in_MNI_corr.nii.gz
This is HCP-MMP1 atlases file taken from https://neuroimaging-core-docs.readthedocs.io/en/latest/pages/atlases.html

Q1-Q6_RelatedValidation210.CorticalAreas_dil_Final_Final_Areas_Group_Colors.32k_fs_LR.dlabel.nii
This a Glasser’s atlas file originally published at https://balsa.wustl.edu/file/3VLx

destrieux2009_rois_labels_lateralized.csv and destrieux2009_rois_lateralized.nii.gz
These are Destrieux 2009 atlas files taken from Nilearn https://github.com/nilearn/nilearn/blob/1607b524/nilearn/datasets/atlas.py#L185 https://www.nitrc.org/frs/download.php/11942/

Destrieux_cifti_empty_template.pscalar.nii 
This is modified version of file "Destrieux.dlabel.nii". Original filecan be found at https://balsa.wustl.edu/file/X5lPq

tfMRI_FACENAME_PA_new_3EV_template.fsf and tfMRI_VISMOTOR_PA_new_template.fsf
These files has been borrowed and modified from Human Connectome Project processing pipeline github repositories https://github.com/Washington-University/HCPpipelines/tree/master/Examples/fsf_templates/HCP-Aging


