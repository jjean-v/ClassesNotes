#! /bin/bash

# Remove build

rm -rf build/

# Build the site
sudo docker run -itv $CLASSES_NOTES_PATH:/antora antora-image:latest

sudo chown -R $USER:$USER build/
# Go to build directory
cd build/site

# Open Web page
explorer.exe index.html
