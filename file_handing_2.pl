open(FH, ">output_2.txt");
print"Enter the DNA sequence:";
$DNA = <>;
chomp($DNA);
print FH "The given DNA sequence is : $DNA \n";
$RNA = $DNA;
$RNA =~s/t/u/g;
print FH "The RNA sequnce is $RNA";
close(FH);
open(FH, ">output_2.txt");
print FH "HELLO WORLD ";
close(FH);
open(FH, ">>output_2.txt");
print FH "WELCOME TO PERL PROGRAMMING ";
close(FH);

