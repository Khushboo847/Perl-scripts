# to extract the stop codon from a given DNA sequnece
print"Enter the sequence: ";
$seq = <>;
chomp($seq);
$stop_codon = substr($seq, -3, 3);
print " The stop codon is: $stop_codon\n";