#!/usr/bin/perl

$phrase = "How now brown cow?";
$subphrase = "ow";

print("The phrase is \"$phrase\"\n");

# search for the first ow

$location = index($phrase, $subphrase);

print("First \"$subphrase\" is at position $location\n");

# search for the first 'ow' after the one we found

$location = index($phrase, $subphrase, $location+1);

print("Next \"$subphrase\" is at position $location\n");

#search for the last ow

$location = rindex($phrase, $subphrase);

print("Last \"$subphrase\" is at position $location");

# search for 'horse'

$location = index($phrase, "horse");

print ("First \"horse\" is at position $location");

exit();
