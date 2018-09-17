#!/usr/bin/perl
use warnings;
use strict;

while (my $line = <STDIN>) {
    chomp $line;
    my @words = split /\s+/, $line;
    my @sorted = sort @words;

    my $result = join " ", @sorted;

    print "$result\n";
}
