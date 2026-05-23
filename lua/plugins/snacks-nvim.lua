local SnacksNvim = require('snacks')
SnacksNvim.setup({
  explorer = {},
  scroll = {},
  indent = {},
  picker = {
    layout = "telescope"
  },
})

vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "Explorer Snacks (root dir)" })
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files(opts) end, { desc = "Snacks find files" })
vim.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<leader>xx", function() Snacks.picker.diagnostics_buffer() end, { desc = "Buffer Diagnostics" })
vim.keymap.set("n", "<leader>hh", function() Snacks.picker.help() end, { desc = "Buffer Diagnostics" })
