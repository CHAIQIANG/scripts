#!/bin/bash
sample=$1
echo $sample
gatk-launch CollectReadCounts \
-I addRGTumor_inputs/$sample.bam \
-L preprocessed_intervals.interval_list \
-R hg19.fa \
--format TSV \
--interval-merging-rule OVERLAPPING_ONLY \
-O cnv_inputs/$sample.tsv
#exit 0
#�ռ�fragment counts on target intervals
