#!/usr/bin/perl
use strict;
use warnings;
use HTML::TokeParser;
use LWP::UserAgent;
use CGI;
# priceplot.pl: Read a file of historical stock prices

# and plot the results.

# Start gnuplot

open(PLOTTER, "|gnuplot -persist");

# Set up the plot
print PLOTTER ("set terminal png small\n");
print PLOTTER ("set output 'prices.png'\n");
print PLOTTER ("set style data financebars\n");

print PLOTTER ("set timefmt '%d-%b-%y\n");

print PLOTTER ("set bar 5\n");

print PLOTTER ("set xdata time\n");

print PLOTTER ("set format x '%m/%d/%y'\n");

# Start the plot - tell it to use the first five fields in order

print PLOTTER ("plot '-' using 1:2:3:4:5 t 'Stock Prices'\n");
my $url = "http://www.josh-klein.com/ibm.csv.txt";
my $query = CGI->new();

 	
# Set up to retrieve the prices from a remote Web server
    # First create a user agent to retrieve the URL
    my $agent = LWP::UserAgent->new();
    # Set the request timeout
    $agent->timeout(30);
    # Create a request to make through the agent
    my $request = HTTP::Request->new(GET => "http://josh-klein.com/ibm.csv.txt");
    # Make the request
    my $result = $agent->request($request);
    # Check the result
    if (!$result->is_success()) { die("Failed to retrieve the page"); }
    # Read the result
    my $prices = $result->content();


foreach my $line (split("\n",$prices))
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
