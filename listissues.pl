#!/usr/bin/perl 
use strict;
my %issues=();
while (<>) {
my @ids = ($_=~/^(\S+) (.+)/); my @el = ($ids[1]=~/(JAL-\d+)/mg); 
foreach my $i (@el) { chomp $i; $issues{$i}="1";}; 
}
print "".(join ",", (keys(%issues)))."\n"; 
