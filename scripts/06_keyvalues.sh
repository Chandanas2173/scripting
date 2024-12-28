#!/bin/bash
declare -A myArray
myArray=([name]=chandana [age]=28 [city]=paris)
echo "name is ${myArray[name]}"
echo "age is ${myArray[age]}"
