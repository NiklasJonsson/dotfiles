#!/bin/bash
echo "copying from home ..."
cp ../.bash_aliases .
cp ../.bashrc .
cp -r ../.vim* .
cp ../.gitconfig .
rm .viminfo
echo "...done"
