#!/usr/bin/perl -w
$default = 10;
foreach $arg (@ARGV) {
    if ($1) {
        $num_lines = $1;
    } else {
        $num_lines = $default;
    }
    push @files, $arg;
}

$i = 0;
foreach $file (@files) {
    open F, '<', $file or die;

    while ($line = <STDIN>) {
        push @lines, $line;
    }

    while (@lines) {
        if ($i > $num_lines) {
            last;
        }

        print "==> $file <==";
        my $line = pop @lines;
        print $line;
        $i++;
    }
    close F;
}

