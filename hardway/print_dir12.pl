use strict;
use warnings;
use diagnostics;
sub print_dir {
    my @fils = glob "$_[0]/*";
    for (@fils) {
         print $_."\n";
         open(my $fh, "<", $_) or die "Cannot Open ". "$_";
         while (my $line = <$fh>) {
             print $line;
         }
         close($fh);
    }
};
print "ARGV:".$ARGV[0]." \n";
print_dir $ARGV[0];
