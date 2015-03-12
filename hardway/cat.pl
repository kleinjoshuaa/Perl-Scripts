#!/usr/bin/perl

use strict;
use warnings;

sub print_file {
    my $file = shift;
    open FILE, $file;
    my $tablev = shift;
    while (my $line = <FILE>) {
        print $line;
    }
}

sub cat{
    while (my $file = shift) {
        if (-d $file) {
            print "Directory!\n";
            my @globFiles = glob "$file/*";
            while (my $ifile = shift @globFiles) {
                if (-B $ifile) {
                    print "$ifile is Binary, skipping\n";
                    next;
                }
                print_file $ifile ;
            }
        }
        print_file $file;
    }
}

cat @ARGV;
