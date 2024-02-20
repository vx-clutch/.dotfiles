#!/bin/bash

echo "this script requires wget and curl to be installed"

if ! command -v curl &> /dev/null
then
    echo "curl not installed, quitting."
    exit
fi

clear() {
    clear
    cat ascii | echo -ne
}

clear