-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {
    'lalitmee/cobalt2.nvim',
    requires = 'tjdevries/colorbuddy.nvim'
}

use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
}

use {
    "cbochs/grapple.nvim",
    requires = { "nvim-lua/plenary.nvim" },
}

end)

