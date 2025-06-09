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

      -- Stater dashboard
      local starter = require('mini.starter')
      starter.setup({
        evaluate_single = true,
        header = table.concat({
          [[  /\ \▔\___  ___/\   /(●)_ __ ___  ]],
          [[ /  \/ / _ \/ _ \ \ / / | '_ ` _ \ ]],
          [[/ /\  /  __/ (_) \ V /| | | | | | |]],
          [[\_\ \/ \___|\___/ \_/ |_|_| |_| |_|]],
          [[───────────────────────────────────]],
        }, "\n"),
        footer = os.date(),
        items = {
          { name = " Create file", action = ":enew", section = "Menu" },
          { name = " Open file", action = require('telescope.builtin').find_files, section = "Menu" },
          { name = " Quit Neovim", action = ":qa!", section = "Menu" },
          starter.sections.recent_files(10, false),
        },
        content_hooks = {
          starter.gen_hook.adding_bullet(" "),
          starter.gen_hook.aligning("center", "center"),
        },
      })
    end
  },
}
