#!/bin/bash
gatk-launch PreprocessIntervals \
-R hg19.fa \
--bin-length 500000 \
--padding 0 \
-O preprocessed_intervals.interval_list
exit 0
#×¼±¸intervals