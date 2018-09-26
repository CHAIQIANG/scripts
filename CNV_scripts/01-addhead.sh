#!/bin/bash
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
exit 0
