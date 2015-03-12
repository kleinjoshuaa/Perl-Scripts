#!/usr/bin/perl
use strict;
use warnings;
# Print a table of numbers and their squares
for (my $x = 0; $x < 10; $x++)
{
    print "$x, " . square($x) . "\n";
}

# Print a table of numbers and their cubes
for (my $x = 0; $x < 10; $x++)
{
    print "$x, " . cube($x) . "\n";
}

exit;


sub square
{
    my ($x) = @_;
    return $x * $x;
}

sub cube
{
    my ($x) = @_;
    return $x * $x * $x;
}
