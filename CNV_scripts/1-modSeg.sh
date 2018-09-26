#!/bin/bash
sample=$1
echo $sample
gatk-launch ModelSegments \
 --denoised-copy-ratios ${sample}.denoisedCR.tsv \
 --output-prefix ${sample} \
 -O outputMS \

