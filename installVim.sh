#!/bin/bash 
##backup old vim config
cp -r ~/.vim/ ~/.vim_old_back
cp -r ~/.vimrc ~/.vimrc_old_back

#install 
tar -xvf vim.tar.gz
cp -r .vim ~
cp -r .vimrc ~
cp -r .uncrustify.cfg ~
