#!/bin/bash
sample=$1
echo $sample
gatk-launch DenoiseReadCounts \
-I cnv_inputs/${sample}.counts.hdf5 \
--standardized-copy-ratios Denoise/${sample}.standardizedCR.tsv \
--denoised-copy-ratios Denoise/${sample}.denoisedCR.tsv
exit 0
#--count-panel-of-normals ./PON/cnvponM.pon.hdf5 \