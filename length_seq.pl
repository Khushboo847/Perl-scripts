$file = "sequences.txt";
$count = 1;
open(fh, "<", $file);
while($line = <fh>) {
    chomp($line);

    next if $line =~ /^>/; 

    $len = length($line);
    print "Seq $count: $line Length: $len\n\n";
    $count++;
}
close($fh);