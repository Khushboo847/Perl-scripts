
my $seq = "ATGCGCGATCGATCGCGCGTTATAT";

my $g = ($seq =~ tr/G/G/);
my $c = ($seq =~ tr/C/C/);

if (($g + $c) != 0) {
    my $gc_skew = ($g - $c) / ($g + $c);
    print "GC Skew: $gc_skew\n";
} else {
    print "No G or C found.\n";
}