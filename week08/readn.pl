#!/usr/bin/perl
use warnings;
use strict;

sub read_n {
    my ($n) = @_;

    my $i = 0;
    my $string = "";

    while ($i < $n) {
        if (my $line = <STDIN>) {
            $string .= $line;
            $i++;
        } else {
            last;
        }
    }

    return $string;
}

my $string = read_n(5);

print "$string";
