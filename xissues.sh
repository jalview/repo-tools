#!/bin/bash
# another quick and dirty JAL- issue extractor reporting issues as CSV - slightly less perl and sorts output
egrep  'JAL-\d+' | perl -ne 'my @el = ($_=~/(JAL-\d+)/mg); foreach $i (@el) { print "$i\n"; }' | sort -u | perl -ne 'chomp; print $_.",";'
