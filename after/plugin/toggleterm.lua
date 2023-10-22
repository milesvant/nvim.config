require("modules/remap")

function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    keymap_once('t', '<esc>', [[<C-\><C-n>]], opts)
    keymap_once('t', 'jk', [[<C-\><C-n>]], opts)
    keymap_once('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    keymap_once('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    keymap_once('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    keymap_once('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    keymap_once('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

keymap_once("n", "<C-t>", "<cmd>ToggleTerm size=25 direction=horizontal<CR>")
