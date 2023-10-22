require("modules.remap")
require("modules.packer")
require("modules.opts")

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

-- paste without overwriting register
vim.api.nvim_set_keymap('v', 'p', 'P', { noremap = true })
