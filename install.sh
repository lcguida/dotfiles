#!/usr/bin/env bash

DOTDIR=$HOME/.dotfiles

set -e

if [ ! -d "$DOTDIR" ]; then
    echo "$DOTDIR does not exists. Make sure to clone lcguida/dotfiles on it:"
    echo "  git clone https://github.com/lcguida/dotfiles.git $DOTDIR"
    exit 1
fi

# Create symbolic links
ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh_init.zsh $HOME/.zsh_init.zsh
ln -s $HOME/.dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/gemrc $HOME/.gemrc
ln -s $HOME/.dotfiles/zsh_plugins.txt $HOME/.zsh_plugins.txt
ln -s $HOME/.dotfiles/gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/ssh_config $HOME/.ssh/config

# Grant ssh the right permissions
chmod 600 $HOME/.ssh/config

# Create secrets file
touch $HOME/.secrets

# Create bin directory
mkdir -p $HOME/bin
