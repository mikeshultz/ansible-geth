#!/bin/bash

# Add a PATH if it isn't already there
if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="${PATH:+"$PATH:"}$1"
    echo "export PATH=${PATH:+"$PATH:"}$1" >> ~/.bash_profile
fi