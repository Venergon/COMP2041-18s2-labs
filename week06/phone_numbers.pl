#!/usr/bin/perl
use warnings;
use strict;

scalar @ARGV == 1 or die "usage: $0 <url>\n";

open F, "-|", "wget -q -O- $ARGV[0]" or die;

while (my $line = <F>) {
    chomp $line;
    my @nums = split /[^\d\- ]/, $line;
    for my $num (@nums) {
        $num =~ s/\D//g;
        if (length $num <= 15 and length $num >= 8) {
            print "$num\n";
        }
    }
}
