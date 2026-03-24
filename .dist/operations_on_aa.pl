print"Enter the amino acid sequence: ";
$aa = <>;
chomp($aa);
print"the entered seq is $aa";
$aromatic = $aa =~ tr/FfWwYy//;
print"\nNumber of aromatic amino acids (F, W, Y): $aromatic\n";
$percentage = ($aromatic / length($aa)) * 100;
print"Percentage of aromatic amino acids: $percenage%\n";

    