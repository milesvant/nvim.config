#!/bin/bash

# Node is required for Copilot.
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew list -q node || brew install node
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt install -y nodejs
fi

# Neovim
if ! command -v nvim &> /dev/null; then
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage --appimage-extract
    ./squashfs-root/AppRun --version

    sudo mv squashfs-root /
    sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
fi

# packer
if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim \
         ~/.local/share/nvim/site/pack/packer/start/packer.nvim 2> /dev/null
fi

# Copilot
if [ ! -d ~/.config/nvim/pack/github/start/copilot.vim ]; then
    git clone https://github.com/github/copilot.vim.git \
        ~/.config/nvim/pack/github/start/copilot.vim 2> /dev/null
fi

npm i -g pyright

