local SnacksNvim = require('snacks')
SnacksNvim.setup({
  explorer = {},
  indent = {},
  picker = {
    layout = "telescope"
  },
})

vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "Explorer" })
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files(opts) end, { desc = "Files" })
vim.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end, { desc = "Help" })
