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

require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})
require("mason-lspconfig").setup()

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
