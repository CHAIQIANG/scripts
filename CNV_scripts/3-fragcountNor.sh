#!/bin/bash
echo $sample
sample=$1
gatk-launch CollectReadCounts \
-I Normcell/${sample}.bam \
-L preprocessed_intervals.interval_list \
-R hg19.fa \
--interval-merging-rule OVERLAPPING_ONLY \
-O outtsv/${sample}.counts.hdf5
exit 0
