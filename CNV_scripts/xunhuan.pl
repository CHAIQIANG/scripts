#!/usr/bin/perl

use warnings;
use strict;
use utf8;
use File::Basename;
use File::Copy;

my @IDs = glob "*.denoisedCR.tsv";
foreach my $sample (@IDs) {
$sample=~s/\.denoisedCR.tsv//g;
    system"bash 8-plotDCR.sh $sample";
}
