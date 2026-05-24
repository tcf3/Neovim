-- Enable new neovim UI
require("vim._core.ui2").enable({})

-- Source all neovim config
require("options")
require("keymaps")
require("autocmds")
require("pack")
require("plugins")
require("lsp")

-- Colorscheme
require('onedark').setup { style = 'dark' }
require('onedark').load()
vim.api.nvim_set_hl(0, "MiniTablineCurrent", { fg = "#dfffff", bold = true })
vim.api.nvim_set_hl(0, "MiniTablineHidden", { fg = "#5c6370", bold = true })
