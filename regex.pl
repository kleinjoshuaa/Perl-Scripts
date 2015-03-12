#!/usr/bin/perl

 	
 # Demonstrate regular expression action. Given a regular expression as a

 # command-line argument, this script processes stdin and generates stdout

 # illustrating where matches occur.

 #

 # Usage: $0 regular-expression

use strict;
use warnings;

 	
 if (@ARGV != 1)

 {

 	print STDERR "Usage: $0 regular-expression\n";

 	exit(1);

 }
 	
 my $regex = $ARGV[0];

 print "Regular expression: /$regex/\n";
 	
 while (defined( my $line = <STDIN>))

 {

 	chomp($line);

 	
 # Remove any embedded tabs

 while ($line =~ s/\t+/' ' x (length($&) * 8 - length($`) % 8)/e) {}

 	
 	# Print the line we're analyzing

 	print("$line\n");

 	# Start the analysis

 	my $pos = 0;

 	# Loop while the expression matches

 	while ($line =~ m/$regex/go)

 	{

 		# Compute location and size of the expression

 		my $offset = length($`);

 		my $newpos = pos($line);

 		 my $length = $newpos - $offset;

 		# Print X's at the right locations

 		if ($length > 0)

 		{

 		print(" " x ($offset - $pos) .

 			"X" .

 			"x" x ($length - 1));

 		$pos = $newpos;

 		}

 	}

 print ("\n");

 }