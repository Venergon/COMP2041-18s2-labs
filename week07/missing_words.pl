#!/usr/bin/perl
use warnings;
use strict;

scalar @ARGV == 2 or die "usage: $0 <file> <file>\n";

open F1, "<", $ARGV[0] or die;
open F2, "<", $ARGV[1] or die;

my %file1_lines;
my %file2_lines;

my $i = 0;
for my $line (<F1>) {
    chomp $line;
    if (!exists $file1_lines{$line}) {
        $file1_lines{$line} = $i;
    }
    $i++;
}

for my $line (<F2>) {
    chomp $line;
    $file2_lines{$line} = 1;
}

sub comparison {
    return $file1_lines{$a} <=> $file1_lines{$b};
}
#{$file1_lines{$a} <=> $file1_lines{$b}}
for my $line (sort comparison keys %file1_lines) {
    if (!exists $file2_lines{$line}) {
        print "$line\n";
    }
}
