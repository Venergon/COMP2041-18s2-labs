#!/usr/bin/perl
use warnings;
use strict;

scalar @ARGV >= 1 or die;
my $fn = $ARGV[0];

foreach my $filename (glob "./*.c") {
    open F, "<", $filename or die "$0: could not open '$filename'";

    my $line_num = 1;

    while (my $line = <F>) {
        chomp $line;
        $line =~ s|//.*||;
        $line =~ s|"[^"]*"|""|g;
        if ($line =~ /^[a-z* ]+$fn\([^)]*\)\s*{\s*$/) {
            print "$filename:$line_num function $fn defined\n";
        } elsif ($line =~ /\s$fn\(.*\)/) {
            print "$filename:$line_num function $fn used\n";
        } elsif ($line =~ /^[a-z* ]+$fn\([^)]*\)\s*;\s*$/) {
            print "$filename:$line_num function $fn declared\n";
        }


        $line_num++;
    }
}
