#!/bin/bash

echo "this script requires wget and curl to be installed"

if ! command -v wget &> /dev/null
then
    echo "wget not installed, quitting."
    exit
fi
if ! command -v curl &> /dev/null
then
    echo "curl not installed, quitting."
    exit
fi


