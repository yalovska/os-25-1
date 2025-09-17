#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <filename>"
    exit 1
fi
directory=$1
filename=$2
find "$directory" -type f -name "$filename.*" -exec dirname {} \; | sort -u
