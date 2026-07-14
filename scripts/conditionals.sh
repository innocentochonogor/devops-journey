#!/bin/bash
count=5

if [ $count -gt 3 ]; then
	echo "Count is greater than 3"
else
	echo "Count is 3 or less"
fi

if [ -f "../notes/day1-notes.txt" ]; then
	echo "File exists"
else
	echo "File does not exist"

fi
