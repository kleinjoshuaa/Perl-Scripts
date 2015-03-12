#!/usr/bin/perl

# Read the file until we're done

while (defined($line = <>))
{
	# Add these words to our list
	push(@wordlist, split(" ",$line));
} #sort it!
@wordlist = sort(@wordlist);
# and Display
foreach $word (@wordlist)
{
	print "$word\n"
}
