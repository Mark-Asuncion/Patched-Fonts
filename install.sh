#! /bin/bash

mkdir $HOME/.local/share/fonts -p

mkdir $HOME/.local/share/fonts/JetBrains
cp JetBrains/* $HOME/.local/share/fonts/JetBrains -v
mkdir $HOME/.local/share/fonts/SpaceMono
cp SpaceMono/* $HOME/.local/share/fonts/SpaceMono -v
mkdir $HOME/.local/share/fonts/Roboto
cp Roboto/* $HOME/.local/share/fonts/Roboto -v

fc-cache -fv
