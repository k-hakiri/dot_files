#!/bin/bash

DOT_DIRECTORY="${HOME}/dotfiles"

# List of files/directories to link to home directory
FILES=(
    ".zshrc"
    ".vimrc"
    ".tmux.conf"
    ".gitconfig"
    ".zsh_plugins.txt"
    ".zsh_plugins.zsh"
)

echo "Creating symlinks..."

for f in "${FILES[@]}"; do
    ln -snfv "${DOT_DIRECTORY}/${f}" "${HOME}/${f}"
done

# Handle .config subdirectories
mkdir -p "${HOME}/.config"
CONFIG_FILES=(
    "gh"
    "iterm2"
)

for c in "${CONFIG_FILES[@]}"; do
    ln -snfv "${DOT_DIRECTORY}/.config/${c}" "${HOME}/.config/${c}"
done

echo "Done!"
