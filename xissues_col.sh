#!/bin/bash
# yet another issue key extractor - reports unique list of issues found in stdin, one per line
egrep  'JAL-\d+' | perl -ne 'my @el = ($_=~/(JAL-\d+)/mg); foreach $i (@el) { print "$i\n"; }' | sort -u 
