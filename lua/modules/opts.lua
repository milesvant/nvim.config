-- Colors
vim.opt.background = "dark"
vim.cmd([[colorscheme tokyonight-moon]])

-- Display relative and absolute line number
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Use xclip clipboard
vim.g.clipboard = {
  name = 'xclip',
  copy = {
    ["+"] = 'xclip -selection clipboard',
    ["*"] = 'xclip -selection clipboard',
  },
  paste = {
    ["+"] = 'xclip -selection clipboard -o',
    ["*"] = 'xclip -selection clipboard -o',
  },
  cache_enabled = 1,
}

-- tell nvim to use the clipboard for all yank, delete, change and put operations
-- 'unnamed' for mac, 'unnamedplus' for linux
vim.opt.clipboard = {"unnamed","unnamedplus"}
