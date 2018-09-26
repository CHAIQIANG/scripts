#!/usr/bin/perl
use warnings;
use strict;
use utf8;
use File::Basename;
use File::Copy;
my @ids = ("CSC9_9","CSC9_1","CSC9_2","CSC9_3","CSC9_4","CSC9_5","CSC9_6","CSC9_7","CSC9_8","CSC9_10","CSC9_11","CSC8_8","CSC8_7","CSC8_6","CSC8_5","CSC8_4","CSC8_3","CSC8_2","CSC8_1","CSC7_8","CSC7_7","CSC7_6","CSC7_5","CSC7_4","CSC7_3","CSC7_2","CSC7_1","CSC6_1","CSC6_2","CSC6_3","CSC6_4","CSC6_5","CSC6_6","CSC6_7","CSC6_8","CSC6_9","CSC6_10","CSC6_11","CSC6_12","CSC5_1","CSC5_2","CSC5_3","CSC5_4","CSC5_5","CSC5_6","CSC5_7","CSC5_8","CSC5_9","CSC5_10","CSC4_1","CSC4_2","CSC4_3","CSC4_4","CSC4_5","CSC4_6","CSC4_7","CSC4_8","CSC4_9","CSC4_10","CSC3_1","CSC3_2","CSC3_3","CSC3_4","CSC3_5","CSC3_6","CSC3_7","CSC3_8","CSC3_9","CSC3_10","CSC2_1","CSC2_2","CSC2_3","CSC2_4","CSC2_5","CSC2_6","CSC2_7","CSC2_8","CSC2_9","CSC2_10","CSC1_1","CSC1_2","CSC1_3","CSC1_4","CSC1_5","CSC1_6","CSC1_7","CSC1_8","CSC1_9","CSC1_10","a2","a3","a4","a5","a6","a7","a8","a9","a10","a11","a12","a13","a14","a15","a16","a17","a18","a19","a20","a21","a22","a23","a24","a25","a26","a27","a28","a29","a30","a31","a32","a33","a34","a35","a36","a37","a38","a39","a40","a41","a42","a43","a44","a45","a46","a47","a48","a49","a50","a51","a52","a53","a54","a55","a56","a57","a58","a59","a60","a61","a62","a63","a64","a65","a66");
foreach my ${id} (@ids) {
 system"cat \"two_${id}.rmdup.addRG.denoisedCR.tsv\" \"three_${id}.rmdup.addRG.denoisedCR.tsv\" \"processed_${id}.rmdup.addRG.denoisedCR.tsv\" > \"/home/chaiqiang/CNV/bam/test/results/${id}.rmdup.addRG.denoisedCR.tsv\"";
}

