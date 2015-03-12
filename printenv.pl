#!/usr/bin/perl
use warnings;
use strict;

for (keys(%ENV)) {
	print $_." --> ".$ENV{$_}."\n";
}
