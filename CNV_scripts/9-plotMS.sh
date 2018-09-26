#!/bin/bash
sample=$1
echo $sample
gatk-launch PlotModeledSegments \
 --denoised-copy-ratios Denoise/${sample}.denoisedCR.tsv \
 --segments CCRatio/${sample}.called.seg \
 --sequence-dictionary hg19.dict \
 --output cnv_plots \
 --output-prefix ${sample}
#--minimum-contig-length 46709983 \