
# Amino acid data: Single => [Three-letter, Molecular weight, pI]
my %amino_acids = (
    'A' => ['Ala', 89.09, 6.00],
    'R' => ['Arg', 174.20, 10.76],
    'N' => ['Asn', 132.12, 5.41],
    'D' => ['Asp', 133.10, 2.77],
    'C' => ['Cys', 121.15, 5.07],
    'E' => ['Glu', 147.13, 3.22],
    'Q' => ['Gln', 146.15, 5.65],
    'G' => ['Gly', 75.07, 5.97],
    'H' => ['His', 155.16, 7.59],
    'I' => ['Ile', 131.17, 6.02],
    'L' => ['Leu', 131.17, 5.98],
    'K' => ['Lys', 146.19, 9.74],
    'M' => ['Met', 149.21, 5.74],
    'F' => ['Phe', 165.19, 5.48],
    'P' => ['Pro', 115.13, 6.30],
    'S' => ['Ser', 105.09, 5.68],
    'T' => ['Thr', 119.12, 5.60],
    'W' => ['Trp', 204.23, 5.89],
    'Y' => ['Tyr', 181.19, 5.66],
    'V' => ['Val', 117.15, 5.96]
);

# 1. Length of sequence
sub sequence_length {
    my ($seq) = @_;
    return length($seq);
}

# 2. Single-letter code
sub single_letter {
    my ($seq) = @_;
    return join(" ", split("", $seq));
}

# 3. Three-letter code
sub three_letter {
    my ($seq) = @_;
    my @result;
    foreach my $aa (split("", $seq)) {
        if (exists $amino_acids{$aa}) {
            push @result, $amino_acids{$aa}[0];
        } else {
            push @result, "???";
        }
    }
    return join(" ", @result);
}

# 4. Molecular weight
sub molecular_weight {
    my ($seq) = @_;
    my $total = 0;
    foreach my $aa (split("", $seq)) {
        if (exists $amino_acids{$aa}) {
            $total += $amino_acids{$aa}[1];
        }
    }
    return $total;
}

# 5. Isoelectric point (average approximation)
sub isoelectric_point {
    my ($seq) = @_;
    my ($total, $count) = (0, 0);
    foreach my $aa (split("", $seq)) {
        if (exists $amino_acids{$aa}) {
            $total += $amino_acids{$aa}[2];
            $count++;
        }
    }
    return $count ? $total / $count : 0;
}

# Main program
print "Enter protein sequence (single-letter codes): ";
my $seq = <STDIN>;
chomp($seq);
$seq = uc($seq);

while (1) {
    print "\nMenu:\n";
    print "1. Length of amino acid\n";
    print "2. Single letter code\n";
    print "3. Three letter code\n";
    print "4. Molecular weight\n";
    print "5. Isoelectric point\n";
    print "6. Exit\n";
    print "Enter your choice: ";

    my $choice = <STDIN>;
    chomp($choice);

    if ($choice == 1) {
        print "Length: ", sequence_length($seq), "\n";
    }
    elsif ($choice == 2) {
        print "Single-letter sequence: ", single_letter($seq), "\n";
    }
    elsif ($choice == 3) {
        print "Three-letter sequence: ", three_letter($seq), "\n";
    }
    elsif ($choice == 4) {
        print "Molecular weight: ", molecular_weight($seq), "\n";
    }
    elsif ($choice == 5) {
        print "Isoelectric point: ", isoelectric_point($seq), "\n";
    }
    elsif ($choice == 6) {
        print "Exiting...\n";
        last;
    }
    else {
        print "Invalid choice!\n";
    }
}