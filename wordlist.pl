#!/usr/bin/perl

# Read the file until we're done
while (defined($line = <>))
{
	# Add these words to our wordlist
	push(@wordlist, split(/[\W]/, lc($line)));
}
# sort it
@wordlist = sort(@wordlist);
push(@words, $wordlist[0]);
push(@wordcounts, 1);
# Add code here to create @words and @wordcounts arrays
$i = 0;
for($j = 0; $j < @wordlist; $j++)
{
	if ($words[-1] eq $wordlist[$j]) 
	{
		 $wordcounts[-1]++;
	} else {
		push(@words, $wordlist[$j]);
		push(@wordcounts, 1);
		#print("$#words :::: $wordlist[$j]\n");
	}
}


#print results
for($i = 0; $i < @words; $i++)
{
	print "$words[$i]: $wordcounts[$i]\n";
}

