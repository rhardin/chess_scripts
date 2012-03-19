#!/bin/bash
# usage:
#  $ ./definer.sh A33
#  A33 English Opening, Symmetrical
#
dictfile=ecoDefinitions
Definition=$(grep -A 50 "$1 " "$dictfile")

echo "$Definition" |
sed -n '1,/^[A-Z]/p' |
sed '$d'

exit 0