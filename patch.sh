#!/bin/bash

if [ -n "$1" ]; then
    fontforge --script font-patcher --mono --complete --fontawesome --fontawesomeextension --fontlogos --octicons --codicons --powersymbols --pomicons --powerline --powerlineextra --material --weather "$1" -out Patched/
else
    echo 'No input'
fi
