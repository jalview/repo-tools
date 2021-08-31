#!/usr/bin/perl 
# reports all unique JAL-... issue keys as a CSV 
# 
use strict;
my %issues=();
while (<>) {
my @ids = ($_=~/^(\S+) (.+)/); my @el = ($ids[1]=~/(JAL-\d+)/mg); 
foreach my $i (@el) { chomp $i; $issues{$i}="1";}; 
}
print "".(join ",", (keys(%issues)))."\n"; 
