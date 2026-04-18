%student = ( "name" => "khushboo",
             "course" => "BTech");

#accessing value
print $student{"name"};

print "\n";

#updating value
print $student{"course"} = "BCA";

print "\n";

#adding items
print $student{"city"} = "Bsr";

print "\n\n";

#loop using hash
foreach $key (keys %student)
{  print "$key = $student{$key}\n" ;}