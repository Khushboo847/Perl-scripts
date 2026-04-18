print "Enter first number:";
$num_1 = <>;
chomp($num_1);

print "Enter second number:";
$num_2 = <>;
chomp($num_2);

add();

sub add{
    $num_3 = $num_1 + $num_2;
    print "$num_3";
}

