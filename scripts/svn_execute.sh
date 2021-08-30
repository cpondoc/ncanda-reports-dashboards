#!/bin/bash -i

# cd into directory with statuses
STATUS_DIR=status_reports
sites=()
pushd "$STATUS_DIR"

# Copy each of the file names into the 
for file in *; do
    site=${file%.csv}
    sites+=($site)
done
popd

# Syntax for Looping
for site in ${sites[@]}; do
    echo "$site"
done