# $file = open(FH, "<", "sequences.txt") or die "Cannot open file: $!";
# print "$file";
# close(FH);

# $file = open(FH, ">", "ne_file.txt") or die "cant write the file";
# print FH "see u tomorrow";
# close(FH);

$file = open(FH,">>","ne_file.txt");
print FH "hello";
close(FH);