#!/usr/bin/perl
# Prints a table of 0-9, squared, and then cubed.
# A different subroutine is called depending on
# what is passed to the print_table function
# (c) Joshua Klein, 2012

use strict;
use warnings;

# Print a table of numbers and their squares
print_table(0, 10, \&sq);

# Print a table of numbers and their cubes
print_table(0 , 10, \&cu);

exit;

sub sq
{
	my ($x) = @_;
	return $x * $x;
}

sub cu
{
	my ($x) = @_;
	return $x * $x * $x;
}

sub print_table
{
	my $l = $_[0];
	my $u = $_[1];
	my $e = $_[2];
	$e eq \&sq ? print "Squared\n" : print "Cubed\n";
	for ( $l; $l < $u; $l++)
	{
		print "$l, ". &$e($l) . "\n";
	}
print "\n";
return;
}
