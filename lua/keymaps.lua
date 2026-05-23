-- Disable Space bar since it will be used as the leader key
vim.keymap.set({ "n", "v" }, "<leader>", "<nop>")

-- Set space as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Replace text
vim.keymap.set("n", "<Leader>r", [[:%s///g<Left><Left><Left>]], { noremap = true, silent = false, desc = "Replace text" })

-- Navigate to next/prev buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = false, desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = false, desc = "Previous buffer" })

-- Delete current buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true, desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>ba", ":%bdelete<CR>", { noremap = true, silent = true, desc = "Delete all buffers" })

-- Swap between split buffers
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true, desc = "Move buffer left" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true, desc = "Move buffer down" })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true, desc = "Move buffer up" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true, desc = "Move buffer right" })

-- Window management
vim.keymap.set("n", "<leader>wq", "<C-w>q", { noremap = true, silent = true, desc = "Quit window" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { noremap = true, silent = true, desc = "Close window" })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { noremap = true, silent = true, desc = "Only this window" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { noremap = true, silent = true, desc = "Horizontal split" })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { noremap = true, silent = true, desc = "Vertical split" })

-- Move selection
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-h>", "<gv")
vim.keymap.set("v", "<C-l>", ">gv")

-- Paste & delete without yanking replaced text
vim.keymap.set("x", "p", '"_dP')
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Native undotree
vim.keymap.set("n", "<leader>u", function()
  vim.cmd.packadd("nvim.undotree")
  require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })
