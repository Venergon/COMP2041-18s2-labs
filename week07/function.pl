#!/usr/bin/perl
use warnings;
use strict;

sub add {
    #$var1 = $_[0];
    #$var2 = $_[1];
    (my $var1, my $var2) = @_;

    return $var1 + $var2;
}

sub fib {
    my $n = $_[0];
    if ($n <= 1) {
        return 1;
    } else {
        my $prev = fib($n - 1);
        my $prevprev = fib($n - 2);
        return $prev + $prevprev;
    }
}

my $val = fib(10);
print "$val\n";
