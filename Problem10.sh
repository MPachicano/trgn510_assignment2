#!/bin/bash
echo enter num1 and num2
read num1 num2

while [ $num1 -gt 0 ||  $num2 -gt 0 ]
do

#convert numbers to Kelvin
num1=$(echo "scale=2;$num1 + 273.15" | bc)
num2=$(echo "scale=2;$num2 + 273.15" | bc)

#do the multiplication
c=`expr $num1 \* $num2`

#convert c back to Celsius
c=$(echo "scale=2;$c - 273.15" | bc) 

echo $c
done
