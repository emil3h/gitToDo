#!/bin/bash

log_file="log.txt"
log_entry="$1"

# Check if log entry text is provided
if [ -z "$log_entry" ]; then
    echo "Usage: $0 <log_entry>"
    exit 1
fi

echo "$(date +"[%Y-%m-%d %H:%M:%S]") $log_entry" >> "$log_file"

git add "$log_file" && git commit -m "Added log entry with timestamp" && git push origin main

