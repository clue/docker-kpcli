#!/bin/bash

args="$@"

file=/data/keepass.kdb
if [ -f $file ]; then
    echo "Found keepass.kdb, trying to open"
    args="$args --kdb=$file"
fi

file=/data/keepass.key
if [ -f $file ]; then
    args="$args --key=$file"
fi

kpcli $args
