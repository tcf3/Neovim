-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Create replace
vim.keymap.set("n", "<Leader>r", [[:%s///g<Left><Left><Left>]], { noremap = true, silent = false })

-- Manage tabs
vim.keymap.set("n", "<Leader>tt", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>to", ":tabonly<CR>", { noremap = true, silent = true })     -- close all but current
vim.keymap.set("n", "<Leader>tc", ":tabclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tm", ":tabmove<Space>", { noremap = true, silent = false }) -- will prompt for position
vim.keymap.set("n", "<Leader>tp", ":tabprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tn", ":tabnext<CR>", { noremap = true, silent = true })
