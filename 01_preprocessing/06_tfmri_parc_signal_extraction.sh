#!/bin/bash

# path to files folder 
path=/media/data/HCPAging/data/CaritTaskRecommended/fmriresults01
path_out=/media/data/HCPAging/data/3T_tfMRI_CARIT/data


### path to subcortical parcellations
mask_fs_path=/media/DataD800/Alina/atlases/FS_subcort
### path to parcellations
parc=/media/DataD800/Alina/atlases/Q1-Q6_RelatedValidation210.CorticalAreas_dil_Final_Final_Areas_Group_Colors.32k_fs_LR.dlabel.nii



### read the names of subjects
cd $path
declare -a names=(`ls -d *_V1_MR`)



### separate subcortical to another folder for both MSMSulc amd MSMAll


for name in ${names[@]} 
do
    mkdir $path_out/$name/signalsROI/
    mkdir $path_out/$name/signalsROI/subcort_MSMAll/

    wb_command -cifti-separate \
    $path/$name/*/*/*/*_clean.dtseries.nii  \
    COLUMN  \
    -volume-all \
    $path_out/$name/signalsROI/subcort_MSMAll/$name.MSMAll.subc.nii
done




### Apply subc (FS) masks to contrasts for each subj and save txt files to separate folder

cd $mask_fs_path/
declare -a mask_names
mask_names=(` ls *fs-bin.nii.gz | cut -d "." -f 1 `)




for name in ${names[@]}
do
    mkdir $path_out/$name/signalsROI/subc_FS_MSMAll_txts/
    mkdir $path_out/$name/signalsROI/subc_FS_MSMAll_txts/$name/

    for mask in ${mask_names[@]}
    do 
       fslmeants -i $path_out/$name/signalsROI/subcort_MSMAll/$name.*.nii \
       -m $mask_fs_path/$mask.fs-bin.nii.gz \
       -o $path_out/$name/signalsROI/subc_FS_MSMAll_txts/$name/$name.FS_subcort.$mask.mean.txt
    done
done




### Apply average HCP atlas parcellation to contrasts (MSMAll) and save new parcellated contrasts into new folder and extract txt into another folder


for name in ${names[@]}
do
    mkdir  $path_out/$name/signalsROI/cort_MSMAll_av_Glasser/

    mkdir  $path_out/$name/signalsROI/cort_MSMAll_av_Glasser_txt/

    wb_command -cifti-parcellate \
    $path/$name/*/*/*/*_clean.dtseries.nii  \
    $parc  \
    COLUMN \
    $path_out/$name/signalsROI/cort_MSMAll_av_Glasser/$name.MSMAll.aver_parc.ptseries.nii  \
    -method MEAN 

    wb_command -cifti-convert -to-text \
    $path_out/$name/signalsROI/cort_MSMAll_av_Glasser/$name.MSMAll.aver_parc.ptseries.nii  \
    $path_out/$name/signalsROI/cort_MSMAll_av_Glasser_txt/$name.MSMAll.aver_parc.txt

done

#rm -R 








