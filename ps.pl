#!/usr/bin/perl
use strict;
use warnings;

open(PS, "ps aux|awk \'{print \$NF,\$3}\'|");
	while(defined(my $line = <PS>))
	{
	print uc($line);
	}
	close(PS);
