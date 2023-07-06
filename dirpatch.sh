#!/bin/bash

folder="$1"

for file in "$folder"/*; do
    if [ -f "$file" ]; then
        ./patch.sh "$file"
    fi
done
