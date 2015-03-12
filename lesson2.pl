# This script will print out a table of square roots
# Written by Josh Klein (c) 2012

print( "Enter Starting number: ");
chomp($start = <>);
print( "Enter Ending number: ");
chomp($end = <>);


while ($start <= $end)
{
	print("Number: $start has Square Root of ".sqrt($start)."\n");
	$start++
}

