require("modules/remap")
local builtin = require('telescope.builtin')

keymap_once('n', '<leader>pf', builtin.find_files, {})
keymap_once('n', '<leader>ps', builtin.live_grep, {})
