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
vim.keymap.set("n", "<Leader>r", [[:%s///g<Left><Left><Left>]], { noremap = true, silent = false })

-- Navigate through buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer", silent = false })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer", silent = false })

-- Delete current buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true, desc = "Delete buffer" })

-- Paste without yanking replaced text
vim.keymap.set("x", "p", '"_dP')

-- Swap between split buffers
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true, desc = "Move left" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true, desc = "Move down" })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true, desc = "Move up" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true, desc = "Move right" })

-- Window management
vim.keymap.set("n", "<leader>wq", "<C-w>q", { noremap = true, silent = true, desc = "Quit window" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { noremap = true, silent = true, desc = "Close window" })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { noremap = true, silent = true, desc = "Only this window" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { noremap = true, silent = true, desc = "Horizontal split" })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { noremap = true, silent = true, desc = "Vertical split" })

-- Resize windows (bigger step: 5)
vim.keymap.set("n", "<leader>w+", "10<C-w>>", { noremap = true, silent = true, desc = "Increase width" })
vim.keymap.set("n", "<leader>w-", "10<C-w><", { noremap = true, silent = true, desc = "Decrease width" })

-- Move selection
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-h>", "<gv")
vim.keymap.set("v", "<C-l>", ">gv")

-- Toogle LSP warnings in current buffer
vim.keymap.set("n", "<leader>ll", function()
  local bufnr = vim.api.nvim_get_current_buf()

  local enabled = vim.diagnostic.is_enabled({ bufnr = bufnr })
  vim.diagnostic.enable(not enabled, { bufnr = bufnr })

  vim.notify("Diagnostics " .. (enabled and "disabled" or "enabled"), vim.log.levels.INFO, { title = "LSP" })
end, { desc = "Toggle diagnostics (buffer)" })

