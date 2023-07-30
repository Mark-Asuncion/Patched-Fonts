#!/bin/bash

folder="$1"

for file in "$folder"/*.ttf; do
    if [ -f "$file" ]; then
        ./patch.sh "$file"
    fi
done
