-- https://github.com/stevearc/oil.nvim
return {
  'stevearc/oil.nvim',
  lazy = false,
  keys = {
    {"-", "<cmd>Oil<cr>" },
  },
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
    skip_confirm_for_simple_edits = true,
    columns = {
      "icon",
      "permissions",
      -- "size",
      -- "mtime",
    },
  },
}
