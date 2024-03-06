require("grapple")
require("milesvant.remap")

keymap_once("n", "<leader>t", require("grapple").tag)
keymap_once("n", "<leader>u", require("grapple").untag)
keymap_once("n", "<leader>pt", require("grapple").toggle_tags)

local grapple_msg = function()
  return "Tag [" .. require("grapple").key() .. "]"
end

require("lualine").setup({
    sections = {
        lualine_x = {
            {
                grapple_msg,
                cond = require("grapple").exists
            }
        }
    }
})
