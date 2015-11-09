#!/bin/bash
echo "copying bash*, vim*, gitonfig"
cp -r ../.bash_aliases .
cp -r ../.bashrc .
cp -r ../.vim* .
cp ../.gitconfig .
rm .viminfo
echo "...done"
