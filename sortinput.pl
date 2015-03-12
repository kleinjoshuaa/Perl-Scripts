#/usr/bin/perl

# Read Input
while(defined($line = <>))
{
	chomp($line);
	# Add them to the @lines arry
	push(@lines, $line);
}
# Sort 'em
@lines = sort(@lines);

# print 'em aht
for ($i = 0; $i < @lines; $i++)
{
	print("$lines[$i]\n");
}
