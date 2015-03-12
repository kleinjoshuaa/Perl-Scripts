#!/usr/bin/perl

# Initialize the word count
$wordcount = 0;

# Read the file until we're done

while (defined($line = <>))
{

	chomp($line);
	# Step through the lines looking for spaces
	for ($position = 0; $position < length($line) && $position != -1; $position = $newposition)
	{
		# Are we at a space?
		if (substr($line, $position,1) eq " ")
		{
			# Skip it!
			$newposition = $position + 1;
			next;
		}
	# We're at the start of a word, increment!
	$wordcount++;
	# look for the next space
	$newposition = index($line," ",$position);
	if ($newposition == -1)
	{
		print(substr($line, $position )."\n");
	} else {
		print(substr($line, $position, $newposition - $position)."\n");
	}
}
}
print("$wordcount words counted in file\n");
