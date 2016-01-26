#!/bin/env sh

optdir="/opt/luapacker"
bindir="/usr/bin/luapacker"

f_=0

if [ -d "$optdir" ]; then #Opt install dir exists
    echo "Removing $optdir"
    sleep 0.5
    rm -rf $optdir
    f_=$((f_ + 2))
fi

if [ -f "$bindir" ]; then #Bin install exists
    echo "Removing $bindir"
    sleep 0.5
    rm $bindir
    f_=$((f_ + 1))
fi

echo "Uninstall finished with $f_ files removed"
