#!/bin/bash

 #addRG for BAM
sample=$1
echo $sample
picard AddOrReplaceReadGroups \
I=/home/chaiqiang/CNV/bam/${sample}.bam \
O=addRGTumor_inputs/${sample}.addRG.bam \
RGID=${sample} \
RGLB=${sample} \
RGPL=illumina \
RGPU=${sample} \
RGSM=${sample} \
SORT_ORDER=coordinate

  #index
samtools index /home/chaiqiang/CNV/Try/reference/addRGTumor_inputs/${sample}.addRG.bam /home/chaiqiang/CNV/Try/reference/addRGTumor_inputs/${sample}.addRG.bam.bai

  #Tumor fragmentCounts
gatk-launch CollectFragmentCounts \
-I addRGTumor_inputs/${sample}.addRG.bam \
-L preprocessed_intervals.interval_list \
-R hg19.fa \
--interval-merging-rule OVERLAPPING_ONLY \
-O cnv_inputs/${sample}.addRG.counts.hdf5

  #Denoise Tumor no use PON
gatk-launch DenoiseReadCounts \
-I cnv_inputs/${sample}.addRG.counts.hdf5 \
--standardized-copy-ratios Denoise/${sample}.addRG.standardizedCR.tsv \
--denoised-copy-ratios Denoise/${sample}.addRG.denoisedCR.tsv


