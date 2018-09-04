#!/usr/bin/perl
use warnings;
use strict;

my %freq;
my %bigram_freq;

while (my $line = <>) {
    chomp $line;
    $line = lc $line;
    my @words = split /[^a-z]+/, $line;

    my $prev = undef;
    for my $word (@words) {
        $freq{$word}++;

        if (defined $prev) {
            # Not the first word
            $bigram_freq{$prev}{$word}++;
        }

        $prev = $word;
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
    for my $next (sort keys %{$bigram_freq{$word}}) {
        print "$word $next ($bigram_freq{$word}{$next})\n";
    }
}
