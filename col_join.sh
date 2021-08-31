#!/bin/bash
# concatenate lines into a csv (see xissues.sh for an all-in-one for extracting jalview issues in the git log into a csv row)
perl -ne 'chomp; print $_.",";'
