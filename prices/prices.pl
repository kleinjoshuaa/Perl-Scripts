# prices.pl
# (c) Joshua Klein, 2012

# This script takes as input the 'prices.txt' textfile 
# and will return the date and price change from the
# previous day's closing price, starting with
# the second record.

use strict;
use warnings;
scalar(@ARGV) or die("Usage: prices.pl filename.txt\n");

my $prev = 0;
while (defined(my $line = <>))
{
	# remove whitespace
	$line =~ s/^\s+//;
	my @row = split(/\s*,\s*|\s+/, $line);
	if ($prev) {
		print("Date: $row[0], Price Change: ");
		print(($row[3] - $prev)."\n");
		$prev = $row[3];
	} else {
		$prev = $row[3];
	}


}
