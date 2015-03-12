#!/usr/bin/perl
$| = 1;
print("What is your first name: ");
$fname= <>;
chomp($fname);
print("What is your last name: ");
$lname= <>;
chomp($lname);
print("Hello ");
print("$fname $lname");
print(", how are you?\n");
if ($lname eq "satan"){
	die("oh fuck");
}
