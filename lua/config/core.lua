-- Disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable Nerd Fonts
vim.g.have_nerd_font = true

-- Enable 24-bit colour
vim.opt.termguicolors = true

-- Numbers
vim.o.number = true

-- Relative numbers
vim.o.relativenumber = false

-- Enable mouse
vim.o.mouse = 'a'

-- Don't show the mode
vim.o.showmode = false

-- Share clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Convert tabs to spaces and sets it to 2 spaces
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

-- Always show nvim tabs
vim.o.showtabline = 2

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- Instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

-- Enable diagnostics for LSP
vim.diagnostic.enable = true
vim.diagnostic.config({
  virtual_lines = true,
})
