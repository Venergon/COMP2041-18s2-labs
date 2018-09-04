#!/usr/bin/perl
use warnings;
use strict;

for my $file (@ARGV) {
    open F, '<', $file or die "Couldn't open file";

    my $total_sighted = 0;
    my $date = "";
    my $species = "";

    while (my $line = <F>) {
        chomp $line;
        if ($line =~ /^(\d{2}\/\d{2}\/\d{2})\s+(\d+)\s+(.*)$/) {
            my $curr_date = $1;
            my $curr_sighted = $2;
            my $curr_species = $3;

            if ($curr_date eq $date and $curr_species eq $species) {
                $total_sighted += $curr_sighted;
            } else {
                if ($date ne "" or $species ne "") {
                    print "$date $total_sighted $species\n";
                }

                $total_sighted = $curr_sighted;
                $date = $curr_date;
                $species = $curr_species;
            }

        }
    }

    if ($date ne "" or $species ne "") {
        print "$date $total_sighted $species\n";
    }
}
