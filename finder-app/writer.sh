#!/bin/bash

### Main ###

writeFile=$1
writeDir="$(dirname "$writeFile")"
writeStr=$2

# check that args are present
if [ $# != 2 ]; then
        echo "incorrect number of arguments passed: $#. Expected 2"
        exit 1
fi
# Check that filesDir exists
if [ ! -d "$writeDir" ]; then
	mkdir -p "$writeDir"
fi

# write to file
echo "$writeStr" > "$writeFile"

if [ $? != 0 ]; then
	echo "Failed to write to file '$writeFile'"
	exit 1
fi
