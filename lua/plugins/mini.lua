return {
  {
    'echasnovski/mini.nvim',
    enabled = true,
    config = function()
      -- Status Line
      require('mini.statusline').setup({
        use_icons = true
      })

      -- Git
      require('mini.git').setup()
      require('mini.diff').setup()

      -- Auto pairs
      require('mini.pairs').setup()
    end
  },
}
