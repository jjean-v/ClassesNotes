#! /bin/bash

# Build the site
podman run -itv /home/jean_ubuntu/projet/:/antora antora-image:latest

# Go to build directory
cd build/site

# Open Web page
explorer.exe index.html
