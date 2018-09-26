#!/bin/bash
gatk-launch CreateReadCountPanelOfNormals \
-I outtsv/a24.rmdup.addRG.counts.hdf5 \
-I outtsv/a45.rmdup.addRG.counts.hdf5 \
-I outtsv/a46.rmdup.addRG.counts.hdf5 \
-I outtsv/a47.rmdup.addRG.counts.hdf5 \
-I outtsv/a48.rmdup.addRG.counts.hdf5 \
--minimum-interval-median-percentile 5.0 \
-O PON/cnvponM.pon.hdf5
exit 0
