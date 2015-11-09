#!/bin/bash
echo "Copying to home..."
cp .bash_aliases ../
cp .bashrc ../
cp -r .vim* ../
cp .gitconfig ../
echo "...done"
