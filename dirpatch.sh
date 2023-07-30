#!/bin/bash

folder="$1"
out="$2"
for file in "$folder"/*.ttf; do
    if [ -f "$file" ]; then
        if [ -n "$3" ]; then
            ./patch.sh "$file" "$out" "$3"
        else
            ./patch.sh "$file" "$out"
        fi
    fi
done
