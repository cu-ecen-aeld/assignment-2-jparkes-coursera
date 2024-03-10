#!/bin/bash

### main ###
filesDir="$1"
searchStr="$2"

# check that args are present
if [ $# != 2 ]; then
	echo "incorrect number of arguments passed: $#. Expected 2"
	exit 1
fi
# Check that filesDir exists
if [ ! -d "$filesDir" ]; then
	echo "$filesDir is not a valid directory";
	exit 1
fi

# Perform search
X=$(grep -R "$searchStr" "$filesDir" | wc -l)
Y=$(grep -Rl "$searchStr" "$filesDir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
