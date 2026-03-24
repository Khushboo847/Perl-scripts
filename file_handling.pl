$file = open(FH, ">output.txt");
print"Enter the DNA sequence:";
$seq=<>;
chomp($seq);
print FH "The given DNA sequnce is:$seq\n";
close(FH);