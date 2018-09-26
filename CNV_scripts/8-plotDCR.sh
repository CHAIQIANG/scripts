#!/bin/bash
sample=$1
echo $sample
gatk-launch PlotDenoisedCopyRatios \
 --standardized-copy-ratios ./${sample}.standardizedCR.tsv \
 --denoised-copy-ratios ./${sample}.denoisedCR.tsv \
 --sequence-dictionary hg19.dict \
 --minimum-contig-length 46709983 \
 --output plots \
 --output-prefix ${sample}
