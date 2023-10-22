require("modules/remap")
local builtin = require('telescope.builtin')

keymap_once('n', '<leader>pf', builtin.find_files, {})
keymap_once('n', '<C-p>', builtin.git_files, {})
keymap_once('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep for: ") });
end)

