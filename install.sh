#! /bin/bash

mkdir $HOME/.local/share/fonts -p

cp JetBrains/ $HOME/.local/share/fonts/ -v
cp SpaceMono/ $HOME/.local/share/fonts/ -v
cp Roboto/ $HOME/.local/share/fonts/ -v

fc-cache -fv
