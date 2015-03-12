#!/usr/bin/perl

# Make sure variables are clean
undef(@words);
undef(@wordcounts);
undef($current_word);

while (defined($line = <>))
{
	# Add these words to our list
	push(@wordlist, split(" ", $line));
}

#sort the list
@wordlist = sort(@wordlist);

# Add code here to create @words and @wordcounts

foreach $word (@wordlist)
{
	#Have we seen this word already?
	if ($current_word ne $word)
	{
		#no, add the new word to @words
		push(@words, $word);
		# and a new count to @wordcounts
		push(@wordcounts, 1);
		#now keep track of the new word
		$current_word = $word;
	}
	else
	{
		#Yes, just increment the counter
		$wordcounts[$#wordcounts]++;
	}
}

# Print out the results
for ($i = 0; $i < @words; $i++)
{
	print("$words[$i]: $wordcounts[$i]\n");
}
