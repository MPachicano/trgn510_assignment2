#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 filename."
    exit 1
fi
 
filename=web
wget -O "$filename" "$1"
 
while read -n 1 c
do
    echo "$c"
done < "$filename" | grep '[[:alpha:]]' | sort | uniq -c | head -n 10
