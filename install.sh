#! /bin/bash

mkdir $HOME/.local/share/fonts -p

cp JetBrains/ $HOME/.local/share/fonts/ -rv
cp SpaceMono/ $HOME/.local/share/fonts/ -rv
cp Roboto/ $HOME/.local/share/fonts/ -rv
cp FiraSans/ $HOME/.local/share/fonts/ -rv

fc-cache -fv
