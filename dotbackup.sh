#!/bin/bash

cp  $HOME/{.zshrc,.vimrc} .

git add --all
git commit -m "New dotfile backup `date +'%Y-%m-%d %H:%M:%S'`"
git push origin master
