local opts = { noremap = true, silent = true }

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Replace text
vim.keymap.set("n", "<Leader>r", [[:%s///g<Left><Left><Left>]], { noremap = true, silent = false })

-- Tabs
vim.keymap.set("n", "<Leader>tt", ":tabnew<CR>", opts )
vim.keymap.set("n", "<Leader>to", ":tabonly<CR>", opts )
vim.keymap.set("n", "<Leader>tc", ":tabclose<CR>", opts ) -- delete all tabs except the current one
vim.keymap.set("n", "<Leader>tm", ":tabmove<Space>", opts ) -- will prompt for position to move
vim.keymap.set("n", "<Leader>tp", ":tabprevious<CR>", opts )
vim.keymap.set("n", "<Leader>tn", ":tabnext<CR>", opts )

vim.keymap.set('n', '<leader>t1', ':tabn 1<CR>', opts )
vim.keymap.set('n', '<leader>t2', ':tabn 2<CR>', opts )
vim.keymap.set('n', '<leader>t3', ':tabn 3<CR>', opts )
vim.keymap.set('n', '<leader>t4', ':tabn 4<CR>', opts )
vim.keymap.set('n', '<leader>t5', ':tabn 5<CR>', opts )

-- Windows
vim.keymap.set('n', '<leader>ws', ':split<CR>', opts)
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>', opts)

vim.keymap.set('n', '<leader>wh', '<C-w>h', opts)
vim.keymap.set('n', '<leader>wj', '<C-w>j', opts)
vim.keymap.set('n', '<leader>wk', '<C-w>k', opts)
vim.keymap.set('n', '<leader>wl', '<C-w>l', opts)

vim.keymap.set('n', '<leader>w-', ':vertical resize -5<CR>', opts)
vim.keymap.set('n', '<leader>w_', ':vertical resize +5<CR>', opts)
vim.keymap.set('n', '<leader>w=', ':resize +5<CR>', opts)
vim.keymap.set('n', '<leader>w+', ':resize -5<CR>', opts)
