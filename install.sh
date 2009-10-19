#!/bin/sh

if [[ -f ~/.vimrc ]]
then
	echo Moving your ~/.vimrc out of the way
	mv -v ~/.vimrc ~/.vimrc.old
fi

if [[ -f ~/.gvimrc ]]
then
	echo Moving your ~/.gvimrc out of the way
	mv -v ~/.gvimrc ~/.gvimrc.old
fi

cp -v _gvimrc ~/.gvimrc

