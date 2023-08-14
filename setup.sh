#!/bin/bash

# Node is required for Copilot.
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew list -q node || brew install node
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt install -y node
fi

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim 2> /dev/null

git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim 2> /dev/null
