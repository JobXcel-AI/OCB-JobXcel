#!/bin/bash

# Source directory
source_dir="/Users/mike/dev/projects/OCB/open-source-addons"

# Destination directory
destination_dir="/Users/mike/dev/projects/OCB/custom-addons"

# Change directory to source directory
cd "$source_dir" || exit

# Iterate over each directory in the source directory
for addon_dir in */; do
    # Check if the item is a directory
    if [ -d "$addon_dir" ]; then
        # Create symbolic link in destination directory
        ln -s "$source_dir/$addon_dir" "$destination_dir"
        # Print the command used to create the symbolic link
        echo "ln -s $source_dir/$addon_dir $destination_dir"
    fi
done