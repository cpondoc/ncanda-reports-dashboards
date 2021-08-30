#!/bin/bash -i
# Script to programmatically execute all of the SVN Reports using Bash!

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

# For each site -- generate papermill notebook, then convert to HTML
for site in ${sites[@]}; do
    papermill 'notebooks/SVN Reports.ipynb' samples/svn/$site.ipynb -p site $site
    sudo jupyter nbconvert --to html samples/svn/$site.ipynb --TagRemovePreprocessor.remove_cell_tags='{"remove_cell"}'
done