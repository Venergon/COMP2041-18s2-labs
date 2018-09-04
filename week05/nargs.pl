#!/usr/bin/perl -w

$num_args = $#ARGV + 1;
$num_args = @ARGV;
$num_args = @ARGV + 0;
$num_args = scalar @ARGV;
print "$num_args\n";

