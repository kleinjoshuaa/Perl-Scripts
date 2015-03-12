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


 	
 # Read it until we're done

 while (defined($filename = readdir(DIRHANDLE)))

 {

 	print "$filename\n";

 }

 	
 # Done!

 closedir(DIRHANDLE); 
