#! /bin/bash

# Remove build

rm -rf build/

# Build the site
podman run -itv $CLASSES_NOTES_PATH:/antora antora-image:latest

# Go to build directory
cd build/site

# Open Web page
explorer.exe index.html
