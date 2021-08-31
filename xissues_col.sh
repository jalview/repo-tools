#!/bin/bash

egrep  'JAL-\d+' | perl -ne 'my @el = ($_=~/(JAL-\d+)/mg); foreach $i (@el) { print "$i\n"; }' | sort -u 
