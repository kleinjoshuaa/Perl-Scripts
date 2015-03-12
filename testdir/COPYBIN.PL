 #!/usr/bin/perl

 # copyfile.pl: Copy a file.

 #

 # Usage: copyfile.pl source dest

 # Make sure the user has specified source and destination files

 if (@ARGV != 2)

 {

 	print STDERR ("Usage: $0 source dest\n");

 	exit(1);

 }    # Open the source file

 if (!open(SOURCEFILE, "<$ARGV[0]"))

 { die "Cannot open $ARGV[0] for reading"; }

 binmode(SOURCEFILE);    # Open the destination file

 if (!open(DESTFILE, ">$ARGV[1]"))

 { die "Cannot open $ARGV[1] for writing"; }

 binmode(DESTFILE);    # Do the copy, block by block

 while (read(SOURCEFILE, $buf, 1024) > 0)

 {

 	print DESTFILE ($buf);

 }    close(SOURCEFILE);

 close(DESTFILE);
