print " Eneter the promoter sequence: ";
$promoter = <>;
chomp($promoter);
print "Enter the gene sequence: ";
$gene = <>;
chomp($gene);
print"The concatenated gene sequence and repeated promoter sequence is ", $gene . ($promoter x2), "\n";