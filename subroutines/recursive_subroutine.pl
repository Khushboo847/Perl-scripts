sub factorial{
    my ($num) = @_;

    if ($n==1){
    return 1;
    }
    return $num * factorial($num-1);
}

$result = factorial(5);
print "the result is $result";