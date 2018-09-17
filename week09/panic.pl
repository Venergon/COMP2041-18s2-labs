#!/usr/bin/perl
use warnings;
use strict;

my $important_file="file.txt";

while (-f $important_file) {
    print "all OK\n";
    sleep 1;
}

print "Panic $important_file gone\n";
