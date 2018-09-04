#!/usr/bin/perl -w


#while ($line = <STDIN>) {
while ($line = <>) {
    chomp $line;
    $line =~ s/[aeiou]//gi;
    print "$line\n";
}
