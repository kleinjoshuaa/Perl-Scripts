#!/usr/bin/perl

$a = 5;

# Print out whether or not $a is defined

if (defined($a)) {print "\$a is definied\n";}
else {print "\$a is undefined\n";}

# now for $b

if (defined($b)) {print "\$a is definied\n";}
else {print "\$b is undefined\n";}

# Now undef a and chk again

$a = undef;


if (defined($a)) {print "\$a is definied\n";}
else {print "\$a is undefined\n";}
print lcfirst("THIS IS NOT A TEST\n");
