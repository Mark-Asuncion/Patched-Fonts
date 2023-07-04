#! /bin/bash

mkdir $HOME/.local/share/fonts -p

cp JetBrains/JetBrainsMonoNerdFontMono-Regular.ttf $HOME/.local/share/fonts/ -v
cp SpaceMono/SpaceMonoNerdFont-Regular.ttf $HOME/.local/share/fonts/ -v

fc-cache -fv
