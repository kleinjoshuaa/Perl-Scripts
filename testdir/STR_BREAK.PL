 #!/usr/bin/perl
$text = "a:b:c:d:e";
@elements = split(/:/, $text);
print "Number of elements: " . scalar(@elements) . "\n";


$text = ":a:b:c:d:e:";
@elements = split(/:/, $text);
print "Number of elements: " . scalar(@elements) . "\n";
