require("milesvant.remap")
require("milesvant.packer")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Display line number
vim.wo.number = true

-- Remaps
vim.g.mapleader = ","
keymap_once("n", "<leader>pv", "<cmd>Ex<CR>")

-- Split pane and navigation shortcuts
keymap_once("n", "<leader>s", "<cmd>sp<CR><C-w><C-j>")
keymap_once("n", "<leader>v", "<cmd>vsp<CR><C-w><C-l>")
keymap_once("n", "<C-h>", "<C-w><C-h>")
keymap_once("n", "<C-j>", "<C-w><C-j>")
keymap_once("n", "<C-k>", "<C-w><C-k>")
keymap_once("n", "<C-l>", "<C-w><C-l>")

keymap_once("n", "<leader>1", function()
  vim.api.nvim_command('vsplit')
  vim.api.nvim_command('wincmd l')
  vim.api.nvim_command('split')
  vim.api.nvim_command('wincmd h')
end)
