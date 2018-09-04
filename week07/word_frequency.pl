#!/usr/bin/perl
use warnings;
use strict;

my %freq;

while (my $line = <>) {
    chomp $line;
    $line = lc $line;
    my @words = split /[^a-z]+/, $line;

    for my $word (@words) {
        $freq{$word}++;
    }
}

sub comparison {
    my $cmp = $freq{$a} <=> $freq{$b};
    if ($cmp == 0) {
        return $b cmp $a;
    } else {
        return $cmp;
    }
}

for my $word (sort comparison keys %freq) {
    print "$freq{$word} $word\n";
}
