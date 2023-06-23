vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Split pane navigation shortcuts
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w><C-h>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w><C-j>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w><C-k>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w><C-l>", { noremap = true, silent = true })
