-- Colorscheme
vim.cmd.colorscheme "tokyonight-storm"

-- Use JK to move in mini.starter
vim.cmd([[
  augroup MiniStarterJK
    au!
    au User MiniStarterOpened nmap <buffer> j <Cmd>lua MiniStarter.update_current_item('next')<CR>
    au User MiniStarterOpened nmap <buffer> k <Cmd>lua MiniStarter.update_current_item('prev')<CR>
    au User MiniStarterOpened nmap <buffer> <C-p> <Cmd>Telescope find_files<CR>
    au User MiniStarterOpened nmap <buffer> <C-n> <Cmd>Telescope file_browser<CR>
  augroup END
]])

-- Remove statusline from nvim-tree
local nt_api = require 'nvim-tree.api'
nt_api.events.subscribe(nt_api.events.Event.TreeOpen, function()
  local tree_winid = nt_api.tree.winid()

  if tree_winid ~= nil then
    vim.api.nvim_set_option_value('statusline', ' ', { win = tree_winid })
  end
end)
