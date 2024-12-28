#!/bin/bash
FILE="/home/chandana-s/myscripts/names.txt"
for name in $(cat $FILE)
do
echo "name is $name"
done
