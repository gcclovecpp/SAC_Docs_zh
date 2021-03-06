#!/usr/bin/env perl
use strict;
use warnings;

@ARGV == 1 or die "Usage: perl $0 dirname\n";
my ($dir) = @ARGV;

chdir $dir;  # cd 进数据所在目录，以避免处理路径

# rdseed 一次只能处理一个 SEED 文件
foreach my $seed (glob "*.seed") {
    system "rdseed -pdf $seed";
}

chdir "..";
