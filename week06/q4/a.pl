#!/usr/bin/perl
use warnings;
use strict;

my $x = 'x';
for (my $i = 1; $i <= 3; $i++) {
    $x = "($x)";
}
print "$x\n";
