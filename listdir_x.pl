 #!/usr/bin/perl

 	
 # listdir.pl: List contents of a directory

 #

 # Usage: listdir.pl dirname

 	
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

 	# Get info on the file

 	@statinfo = stat("$dirname/$name");

 	# Is it a directory?

 	if (-d(_))

 	{

 		# Yes, print the name and the date last modified

 		print("$name (directory), last modified " .

 		scalar(localtime($statinfo[9])) . "\n");

 }

 else

 {

 	# Not a directory; print the name, size, and date

 	print("$name, size = " . $statinfo[7] .

 		", last modified " .

 		scalar(localtime($statinfo[9])) . "\n");

 	}

 } 
