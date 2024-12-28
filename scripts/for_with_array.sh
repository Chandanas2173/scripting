#!/bin/bash
myArray=( 1 2 3  hello hi  )
length=${#myArray[*]}
for (( i=0;i<$length;i++ ))
do 
echo "value of array is ${myArray[$i]}"
done
