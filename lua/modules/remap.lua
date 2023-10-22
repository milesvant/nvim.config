-- Global table of all user defined keymaps
USER_KEYMAPS = {}

-- Set a user-defined keymap, printing an error if it overrides a previous one
function keymap_once(mode, key, command)
  local key_fixed = key:gsub('<C%-[%l]>', function(c) return c:upper() end)

  if not USER_KEYMAPS[mode] then
    USER_KEYMAPS[mode] = {}
  end

  for _, map_key in pairs(USER_KEYMAPS[mode]) do
    if map_key == key_fixed then
      print('Warning: key sequence ' .. key .. ' is already mapped')
      return
    end
  end

  -- vim.api.nvim_set_keymap(mode, key, command, options)
  vim.keymap.set(mode, key, command)
  table.insert(USER_KEYMAPS[mode], key_fixed)
end
