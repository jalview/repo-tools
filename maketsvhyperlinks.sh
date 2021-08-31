#!/bin/bash
# pipe from git-nomerged to transform its output to TSV with issue keys in eaach row of stdin as a hyperlink ready to paste into Google Sheets 
perl -ne "print \"\n\";chomp; my \$l=\$_; my \$tb=(scalar \$l=~/\t/g); my @el=(\$l=~/(JAL-\d+)/g); print \$l; ((\$tb<4) and print \"\t\"x(3-\$tb)); local %k; foreach \$i (@el) { \$k{\$i}=1; }; @el = keys %k; foreach \$i (@el) { print \"\t=HYPERLINK(\\\"http://issues.jalview.org/browse/\$i\\\",\\\"\$i\\\")\"; };" 
