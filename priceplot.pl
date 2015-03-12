#!/usr/bin/perl
use strict;
use warnings;
# priceplot.pl: Read a file of historical stock prices

# and plot the results.

# Start gnuplot

open(PLOTTER, "|gnuplot -persist");

# Set up the plot

print PLOTTER ("set style data financebars\n");

print PLOTTER ("set timefmt '%d-%b-%y\n");

print PLOTTER ("set bar 5\n");

print PLOTTER ("set xdata time\n");

print PLOTTER ("set format x '%m/%d/%y'\n");

# Start the plot - tell it to use the first five fields in order

print PLOTTER ("plot '-' using 1:2:3:4:5 t 'Stock Prices'\n");

while (defined(my $line = <>))
{

    # Extract the fields from the line

    (my $date,my $open, my $high, my $low, my $close) = split(/,/, $line);

    # Does the first field look like a date? If not, skip this line

    if (!($date =~ m/-.*-/)) { next; }

    # Print the data needed by gnuplot

    print PLOTTER ("$date $open $low $high $close\n");

}

print PLOTTER ("e\n");
print PLOTTER ("pause -1 'Press OK when done'\n");

close(PLOTTER); 
