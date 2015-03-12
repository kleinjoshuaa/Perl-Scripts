use strict;
use warnings;
use diagnostics;
sub print_dir {
    my @fils = glob "$_[0]/*";
    print @fils;
   for my $fil (@fils) {
    print $fil . "\n";
    }
};
print "ARGV:".$ARGV[0]." \n";
print_dir $ARGV[0];
