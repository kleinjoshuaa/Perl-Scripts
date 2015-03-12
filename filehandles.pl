#!/usr/bin/perl

 # copyfile.pl: Copy a file.

 #

 # Usage: copyfile.pl source dest

 
 # Make sure the user has specified source and destination files

 if (@ARGV != 2)

 {

 	print STDERR ("Usage: $0 source dest\n");

 exit(1);

 }
 
 # Open the source file for reading

 if (!open(SOURCEFILE, "<$ARGV[0]"))

 { die "Cannot open $ARGV[0] for reading"; }

 	
 # Open (and create) the destination file for writing

 if (!open(DESTFILE, ">$ARGV[1]"))

 { die "Cannot open $ARGV[1] for writing"; }

 	
 # Do the copy, line by line

 while (defined($line = <SOURCEFILE>))

 {

 	print DESTFILE ($line);

 }
 	
 close(SOURCEFILE);

 close(DESTFILE); 
