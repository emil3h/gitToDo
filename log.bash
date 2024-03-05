#!/bin/bash

log_file="log.txt"
log_entry="This is a log entry."

echo "$(date +"[%Y-%m-%d %H:%M:%S]") $log_entry" >> "$log_file"

git add "$log_file" && git commit -m "Added log entry with timestamp" && git push origin main

