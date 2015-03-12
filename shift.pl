#!/usr/bin/perl

for($i=0; $i<10; $i++)
 {
 shift(@a_);
 print("@a_");
 print($i."\n");
 }
 exit();
