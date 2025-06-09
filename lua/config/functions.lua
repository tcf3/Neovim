-- Remove statusline from nvim-tree
local nt_api = require 'nvim-tree.api'

nt_api.events.subscribe(nt_api.events.Event.TreeOpen, function()
  local tree_winid = nt_api.tree.winid()

  if tree_winid ~= nil then
    vim.api.nvim_set_option_value('statusline', ' ', { win = tree_winid })
  end
end)
