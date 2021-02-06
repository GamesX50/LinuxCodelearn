#!/bin/bash
read a
if [ -d $a ]; then
echo "$a is a directory."
elif [ -f $a ]; then
echo "$a is a file."
else
echo "$a does not exist."
fi
