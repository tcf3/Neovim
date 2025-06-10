return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')

      --vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

      vim.keymap.set("n", "<Leader>ff", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<Leader>fh", require('telescope.builtin').help_tags)
      vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
    end
  }
}
