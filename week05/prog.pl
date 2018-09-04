#!/usr/bin/perl -w

$line = "abcd";
$line =~ /(ab)(cd)/;

$var1 = "$0.50";
$var2 = '$2.50';
print "$var1\n";
print "$var2\n";
print $var1 + $var2 . "\n";

if ($var1 eq $var2) {
    print "Strequal\n";
}

if ($var1 == $var2) {
    print "numequal";
}
# + : additon of numbers
# . : concatentation of strings
