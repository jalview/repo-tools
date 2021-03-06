#!/bin/bash
# Usage - getissues.sh <git range specifier> - outputs JAL-.. issues in commit messages as CSV
RANGE=$1

git log --no-merges --oneline $RANGE | egrep  'JAL-\d+' | perl -ne 'my @ids = ($_=~/^(\S+) (.+)/); my @el = ($ids[1]=~/(JAL-\d+)/mg); foreach $i (@el) { print "$i\n"; }' | sort -u | perl -ne 'chomp; print $_.",";'
