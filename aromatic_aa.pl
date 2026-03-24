print"Enter the amino acid sequence:";
$aa=<>;
chomp($aa);
$aromatic_count = ($aa =~ tr/FWY//);
$percentage_composition = ($aromatic_count / length($aa)) * 100;
print "The percentage composition of aromatic acid in the given sequence is:"; 
printf"%.3f", $percentage_composition;