#!/bin/bash
sample=$1
echo $sample
gatk-launch ModelSegments \
 --denoised-copy-ratios Denoise/${sample}.denoisedCR.tsv \
 --output-prefix ${sample} \
 -O outputMS \

