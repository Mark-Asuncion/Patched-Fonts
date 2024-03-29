#!/bin/bash

function patch {
    if [[ -n "$1" && -n "$2" ]]; then
        if [ "$3" == "mono" ]; then
            fontforge --script font-patcher --mono \
                --complete --fontawesome --fontawesomeextension \
                --fontlogos --octicons --codicons --powersymbols \
                --pomicons --powerline --powerlineextra --material \
                --weather "$1" -out Patched/"$2"
        else
            fontforge --script font-patcher \
                --complete --fontawesome --fontawesomeextension \
                --fontlogos --octicons --codicons --powersymbols \
                --pomicons --powerline --powerlineextra --material \
                --weather "$1" -out Patched/"$2"
        fi
    else
        echo 'No input'
    fi
}

folder="$1"
out="$2"
for file in "$folder"/*.ttf; do
    if [ -f "$file" ]; then
        if [ -n "$3" ]; then
            patch "$file" "$out" "$3"
        else
            patch "$file" "$out"
        fi
    fi
done
