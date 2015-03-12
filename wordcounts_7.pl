#!/usr/bin/perl
use warnings;
use strict;

# Initialize our hash
my %wordcounts;

# Read the file until we're done
while (defined(my $line = <>))
{
 # Add each word to our hash
 foreach my $word (split(/\W+/, lc($line)))
 {
  # Increment the count for this word. If we haven't yet seen
  # the word, this will replace an undefined value with a 1
  $wordcounts{$word}++;
 }
}

# Print out the results
foreach my $word (sort({$wordcounts{$b} <=> $wordcounts{$a}} keys(%wordcounts)))
{
 print "$word: $wordcounts{$word}\n";
}
