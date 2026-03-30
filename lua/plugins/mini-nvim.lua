-- https://github.com/nvim-mini/mini.nvim
return {
	{ "echasnovski/mini.icons", version = "*", opts = {} },
	{ "echasnovski/mini.pairs", version = "*", opts = {} },
	{ "echasnovski/mini.statusline", version = "*", opts = {} },
	{ "echasnovski/mini.tabline", version = "*", opts = {} },
	{ "echasnovski/mini.cursorword", version = "*", opts = {} },
	{ "echasnovski/mini.completion", version = "*", opts = {} },
	{ "echasnovski/mini.snippets", version = "*", opts = {} },
	{ "echasnovski/mini.diff", version = "*",
    opts = {
      view = {
        style = 'sign',
        signs = { add = '▒', change = '▒', delete = '▒' },
        priority = 199,
      },
    }
  },
}
