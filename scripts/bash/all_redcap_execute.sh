#!/bin/bash -i
# Script to programmatically execute all of the All REDCap Forms using Bash!

# cd into directory with inventory forms
FORMS_DIR=inventory_by_site
sites=()
pushd "$FORMS_DIR"

for dir in *; do
    pushd $dir
    for arm in *; do
        pushd $arm
        
        popd
    done
    popd
done
popd