#!/usr/bin/perl
use warnings;
use strict;

my %last_seen;

for my $file (@ARGV) {
    open F, '<', $file or die "Couldn't open file";

    while (my $line = <F>) {
        chomp $line;
        if ($line =~ /^(\d{2}\/\d{2}\/\d{2})\s+(\d+)\s+(.*)$/) {
            my $curr_date = $1;
            my $curr_sighted = $2;
            my $curr_species = $3;

            $last_seen{$curr_species} = $curr_date;

        }
    }
}

for my $species (sort {$last_seen{$a} cmp $last_seen{$b}} keys %last_seen) {
    print "$species $last_seen{$species}\n";
}
