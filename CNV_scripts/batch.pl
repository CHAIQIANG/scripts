#!/usr/bin/perl

use warnings;
use strict;
use utf8;
use File::Basename;
use File::Copy;

my @IDs = glob "*.bam";
foreach my $sample (@IDs) {
$sample=~s/\.bam//g;
    system"bash 2-fragcounts.sh $sample";
}
