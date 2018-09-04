#!/usr/bin/perl
use warnings;
use strict;

sub print_hash {
    my %hash = @_;

    my $i = 0;

    for my $key (sort keys %hash) {
        print "[$key] => $hash{$key}\n";
        $i++;
    }
    return $i;
}

my %colours = ("John" => "blue", "Anne" => "red", "Andrew" => "green");

my $i = print_hash(%colours);
print "$i\n";

