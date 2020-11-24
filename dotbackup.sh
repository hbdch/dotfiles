#!/bin/zsh

cp $HOME/{.zshrc,.vimrc,.tmux.conf} .
git add --all
git commit -m "New configfile backup `date +'%Y-%m-%d %H:%M:%S'`"
git push origin master
