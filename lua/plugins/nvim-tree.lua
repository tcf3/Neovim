return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true }),
  config = function()
    require("nvim-tree").setup {
      sync_root_with_cwd = true,
      reload_on_bufenter = true,
      respect_buf_cwd = true,
      view = {
        width = 40,
      },
      renderer = {
        group_empty = true,
        indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          web_devicons = {
            file = {
              enable = true,
              color = true,
            },
            folder = {
              enable = true,
              color = true,
            },
          },
        },
      },
      filters = {
        dotfiles = true,
        custom = { "^.git$", ".venv$", "__pycache__" },
      },
    }
  end,
}
