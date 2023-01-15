#!/bin/sh

echo "initializing dotfiles..."
DOTFILES_DIR=$HOME/.dotfiles

git clone --bare https://github.com/janhuddel/dotfiles.git $DOTFILES_DIR
git --git-dir=$DOTFILES_DIR --work-tree=$HOME' checkout
