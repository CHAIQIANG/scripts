#!/bin/bash
sample=$1
echo $sample
samtools index ${sample}.bam ${sample}.bam.bai
exit 0
