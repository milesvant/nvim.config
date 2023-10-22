require("modules/remap")
local builtin = require('telescope.builtin')

keymap_once('n', '<leader>ff', builtin.find_files, {})
keymap_once('n', '<leader>fg', builtin.live_grep, {})
