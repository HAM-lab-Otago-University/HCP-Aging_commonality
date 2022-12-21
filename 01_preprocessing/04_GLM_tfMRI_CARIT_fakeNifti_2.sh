#!/bin/bash

#set path
path=/media/data/HCPAging/data/3T_tfMRI_CARIT/data


#read subjects folder names
cd $path
declare -a subjects=(`ls -d *V1_MR`)


for subject in ${subjects[@]}
do
    #change directory to subject folder
    cd $path/$subject

    #change template fsf to individual path
    sed "s|ZZZ|`pwd`|g" $path/*corGo.fsf > design2.fsf

    #run GLM in FSL
    feat design2.fsf

    #convert all contrast files to cifti
    #i=1
    #for file in ` ls ./tfMRI_MSMAll_clean_fakeNIFTI.feat/stats/cope*.nii.gz`
    #do 
    #    wb_command -cifti-convert -from-nifti $file ./template_cifti_aver.dscalar.nii ./cope$i.unwrapped.dscalar.nii 
    #    ((i+=1)) 
    #done

    
done

