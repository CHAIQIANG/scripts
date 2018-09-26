#!/bin/bash
sample=$1
echo $sample
gatk-launch CallCopyRatioSegments \
 -I outputMS/${sample}.cr.seg \
 -O CCRatio/${sample}.called.seg
