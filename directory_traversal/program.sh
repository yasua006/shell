#!/bin/sh

while true; do
    echo "Search project:"
    read -r search

    if grep -rH "$search" "."; then
        echo "End of program."
        break
    else
        echo "No results found!"
    fi
done