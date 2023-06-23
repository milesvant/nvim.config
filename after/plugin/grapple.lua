require("grapple")
vim.keymap.set("n", "<leader>m", require("grapple").toggle)
vim.keymap.set("n", "<leader>t", require("grapple").tag)
vim.keymap.set("n", "<leader>u", require("grapple").untag)

