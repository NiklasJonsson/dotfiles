#!/bin/bash
echo "copying bash*, vim*, gitonfig"
cp -r ../.bash* .
cp -r ../.vim* .
cp ../.gitconfig .
rm ./.bash_history
echo "...done"

echo "staging and pushing..."
git add ./*
git push -u origin master
echo "...done"


