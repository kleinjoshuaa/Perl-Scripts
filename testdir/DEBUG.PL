#!/usr/bin/perl

 # Print a table of square roots
for ($i = 0; $i < 10; $i++)
{
	print(compute_output($i));
}
sub compute_output
{
	my $i = shift(@_);
	my $sqrt = sqrt($i);
	my $output = "$i $sqrt\n";
	return $output
} 
