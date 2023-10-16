#!/bin/bash

# Node is required for Copilot.
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew list -q node || brew install node
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt install -y nodejs
fi

# neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

echo 'alias vi=nvim' >> ~/.bashrc 

# xclip
sudo apt-get update
sudo apt-get install xclip

# packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim 2> /dev/null

# copilot
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim 2> /dev/null
