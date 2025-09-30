return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = {},
    picker = {},
    indent = {},
    terminal = {
      win = { style = "terminal" },
    },
  },

  keys = {
    { "<leader>e", function() Snacks.explorer() end, desc = "Explorer Snacks (root dir)", },
    { "<leader>ff", function() Snacks.picker.files(opts) end, desc = "Snacks find files", },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep picker", },
    { "<leader>t", function() Snacks.terminal.toggle(cmd, opts) end, desc = "Terminal" }
  }
}
