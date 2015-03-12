#!/usr/bin/perl

# This uses the pythagorean theorem to compute the length
# of the hypotenuse of a right triangle

print "Input the length of side A\n";
$length_a = <>;
chomp($length_a);


print "Input the length of side B\n";
$length_b = <>;
chomp($length_b);

# Compute the hypotenuse

$hypot = sqrt($length_a ** 2 + $length_b ** 2);

print "The length of the hypotinuse is $hypot\n";


