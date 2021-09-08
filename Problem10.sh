#!/bin/bash
echo enter num1 and num2
read num1 num2
#convert numbers to Kelvin
num1=$(echo "scale=2;$num1 + 273.15" | bc)
num2=$(echo "scale=2;$num2 + 273.15" | bc)

#do the multiplication
c=`expr $num1 \* $num2`

#convert back to Celsius
num1=$(echo "scale=2;$num1 - 273.15" | bc)
num2=$(echo "scale=2;$num2 - 273.15" | bc)

echo $c
