#!/bin/bash
FILES=$(/usr/bin/ls $@)
echo $FILES $@
for f in $FILES

if [ $f wc -m  -gt 1000 ]
then 
echo "Skipping $f file"
fi

