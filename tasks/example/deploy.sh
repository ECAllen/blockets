#! /usr/bin/env bash

# Example of script to distribute compiled code 

echo "============================================================"
echo "Deploying"
echo "============================================================"

distribute ${USER} ${ME}.hosts ${SRC}/compiled/* ${DEV_DEST}

