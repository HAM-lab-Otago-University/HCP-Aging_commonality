# HCP-Aging_commonality

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
