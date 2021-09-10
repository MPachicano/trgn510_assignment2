#!/bin/bash
FILES=$(/usr/bin/ls $@)
echo $FILES $@
for f in $FILES
do
echo "Processing $f file..."
#check if file is greater than 1000 bytes
if [ $FILES | wc -c -gt 1000 ]
then
#skip if it is over 1000 bytes
echo "Skipping $f"
elif [ $FILES |  wc -c -eq 1000 ] 
then
wc -c $f
fi
done

