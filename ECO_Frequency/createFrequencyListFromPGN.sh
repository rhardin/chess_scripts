#!/bin/bash
# warning, this script can be SLOW on big PGN files.
dictfile=ecoDefinitions
grep "^\[ECO" $1 &> matches
`cat matches | awk '{split($0,a,"\""); print a[2]}' &> split_matches`
for line in `cat split_matches`; do
    Definition=$(grep -A 50 "${line} " "$dictfile")
    echo "$Definition" | sed -n '1,/^[A-Z]/p' | sed '$d' >> defined_matches
done
sort defined_matches | uniq -c | sort -nr &> frequency
rm matches
rm split_matches
rm defined_matches
