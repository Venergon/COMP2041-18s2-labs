#!/usr/bin/perl
use warnings;
use strict;

my @hi = split //,"hello";
for (my $i = 0; $i < 4; $i++) {
    print $hi[$i];
}
print "\n";
