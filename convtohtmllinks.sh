#!/bin/bash

perl -npe 'my @el=($_=~/(JAL-\d+)/g); foreach $i (@el) { print "<a href=\"http://issues.jalview.org/browse/$i\">$i</a> "; }; print "/t";' 
