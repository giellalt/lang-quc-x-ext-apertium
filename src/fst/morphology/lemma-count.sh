#!/bin/bash

# For debugging, uncomment this command:
# set -x

srcdir=$1

lemmacount=$(cut -d'!' -f1 < $srcdir/src/fst/morphology/ext-Apertium-quc/apertium-quc.quc.lexc | egrep -v '^\s*\S+\s+;' | grep ';' | egrep -v '(@| # ;|:%>|%> |%} )' | wc -l)

echo $lemmacount
