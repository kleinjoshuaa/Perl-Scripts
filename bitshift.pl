#!/usr/bin/perl

# This script shows off bitshifting
while (1)
{
	print("Enter Number to Bitshift:");
	chomp($num = <>);
	print("Enter amount to bitshift:");
	chomp($amt = <>);
	print("Enter l or r:");
	chomp($lr = <>);
if (lc($lr) eq "l")
	{
		print (($num << $amt)."\n");
	} elsif(lc($lr) eq "r") {
		print (($num >> $amt)."\n");
	} else {
		print "Entered $lr, exiting\n";
		exit();
	}
}
