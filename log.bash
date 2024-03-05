#!/bin/bash
# Allow personal logging directly from a call to this script

# Create log if it doesn't exist
if [ ! -f log.txt ]; then
    echo "Creating log..."
    touch log.txt

    # Need empty space for sed to work
    echo " " > log.txt
fi

# Log from command line
sed -i "1s;^;$(date +"%D %H:%M"): $1\n;" log.txt
