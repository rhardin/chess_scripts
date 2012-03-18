#!/bin/bash
grep "^\[ECO" $1 &> matches
sort matches | uniq -c | sort -nr &> frequency
rm matches
