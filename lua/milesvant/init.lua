require("milesvant.remap")
require("milesvant.packer")
require("milesvant.opts")

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

keymap_once("v", "J", ":m '>+1<CR>gv=gv")
keymap_once("v", "K", ":m '>-2<CR>gv=gv")

-- Tab navigation keymaps
keymap_once("n", "<leader>o", "<cmd>tabnew<CR>")

-- Omnifunc maped to ,, for easier completions.
keymap_once("i", ",,", "<C-x><C-o>")

-- Setup LSP
require'lspconfig'.pyright.setup{}

