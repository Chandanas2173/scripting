#!/bin/bash
if [[ $# -eq 0 ]]
then
echo "please provide atleast one argument"
exit 1
fi
echo "first argument is $1"
echo "second argument is $2"
echo "all the arguments are - $@"
echo "number of arguments are - $#"
for filename in $@
do
echo "copying file - $filename"
done
