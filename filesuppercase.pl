# filesuppercase.pl
# Turns files in the named directory to uppercase names
# Written by Joshua Klein
# (c) 2012

# Get the name of the directory to list

 if (@ARGV == 1)

 { $dirname = $ARGV[0]; }
 else
 { print STDERR ("Usage: $0 dirname\n"); exit(1); }

 	
 # Open the directory

 opendir(DIRHANDLE, $dirname);
 	
 # Read the directory

 @filenames = readdir(DIRHANDLE);

# Close the directory

 closedir(DIRHANDLE);
 	
 # List the contents and detailed information

 foreach $name (sort(@filenames))
{
	$full_name = $dirname.$name;
 	# Is it a directory?
 	if (!(-d($full_name)))
	{
 		# Not a directory; make the file uppercase
 		rename($full_name,$dirname.uc($name));
	}
} 
