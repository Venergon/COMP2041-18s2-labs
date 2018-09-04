#!/usr/bin/perl -w

#@lines = <STDIN>;

$max_lines = 10;
if (scalar @ARGV >= 1) {
    if ($ARGV[0] =~ /^-(\d+)$/) {
        # =~ - apply regex
        $max_lines = $1;
        shift @ARGV;
    }
}

if (scalar @ARGV == 0) {
    $i = 0;

    while ($line = <STDIN>) {
        if ($i >= $max_lines) {
            last; # == break
            #next; == continue
        }
        chomp $line;
        print "$line\n";
        $i++;
    }
} else {
    for $filename (@ARGV) {
        print "==> $filename <==\n";
        $i = 0;

        open F, "<", "$filename" or die;

        while ($line = <F>) {
            if ($i >= $max_lines) {
                last; # == break
                #next; == continue
            }
            chomp $line;
            print "$line\n";
            $i++;
        }
    }
}
