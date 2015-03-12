#/usr/bin/perl

# Initialize word count

$wordcount = 0;

# Read the file until we're done
while (defined($line = <>))
{
	#Extract the words from the line
	@words = split(" ", $line);
	# Add the counts from this line
	$wordcount += @words;
	# show the words we counted
	if (@words > 0) 
	{
		print(join("\n", @words)."\n");
	}
}
print("$wordcount words counted in the file\n");
