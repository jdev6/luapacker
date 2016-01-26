#!/bin/env sh

in=$1
out=$2

if [[ "$1" == '' ]]; then
    echo "You need to specify the name of the file"
    exit 1
fi

if [[ "$out" == '' ]]; then
    out='lp.out'
fi

echo "Compiling $in to $out"

#Command in the form of:
#path/to/glue path/to/srlua $in $out

