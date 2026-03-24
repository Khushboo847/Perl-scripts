print"Enter a DNA sequence to reverse: ";
my $DNA = <>;
chomp($DNA);
$reversed_DNA = reverse($DNA);
print"Reversed DNA sequence: $reversed_DNA\n";