#!/bin/bash

# Default to non-headless mode
HEADLESS="False"

# Check for command line arguments
for arg in "$@"
do
    case $arg in
        --headless)
        HEADLESS="True"
        shift
        ;;
    esac
done

export HEADLESS
robot --variable HEADLESS:$HEADLESS --variable BROWSER:chrome tests/
