-- Files
local MiniFiles = require("mini.files")
MiniFiles.setup({
  mappings = {
    go_in = "<CR>",
    go_in_plus = "L",
    go_out = "_",
    go_out_plus = "H",
  },
})

vim.keymap.set("n", "-", "<cmd>lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" })
vim.keymap.set("n", "<leader>-", function()
  MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
  MiniFiles.reveal_cwd()
end, { desc = "Toggle into currently opened file" })

--- Completion
local MiniCompletion = require("mini.completion")
MiniCompletion.setup({
  lsp_completion = {
    auto_setup = true,
  }
})

--- Snippets
local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
  snippets = {
    MiniSnippets.gen_loader.from_lang(), -- loads friendly-snippets
    -- MiniSnippets.gen_loader.from_file('~/.config/nvim/snippets/global.json'),
  },
})
MiniSnippets.start_lsp_server({ match = false })

--- Surround
local MiniSurround = require("mini.surround")
MiniSurround.setup({
  mappings = {
    add = '<leader>sa',     -- Add surrounding in Normal and Visual modes
    delete = '<leader>sd',  -- Delete surrounding
    replace = '<leader>sr', -- Replace surrounding
    find = '<leader>sf',    -- Find surrounding (to the right)
    find_left = '',         -- Find surrounding (to the left)
    highlight = '',         -- Highlight surrounding

    suffix_last = '',       -- Suffix to search with "prev" method
    suffix_next = '',       -- Suffix to search with "next" method
  },
})

-- Text Highlights
local MiniCursorword = require('mini.cursorword')
MiniCursorword.setup()

local MiniHipatterns = require('mini.hipatterns')
MiniHipatterns.setup({
  highlighters = {
    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
    fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
    hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
    todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
    note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

    -- Highlight hex color strings (`#rrggbb`) using that color
    hex_color = MiniHipatterns.gen_highlighter.hex_color(),
  },
})

-- Trail spaces
local MiniTrailspace = require('mini.trailspace')
MiniTrailspace.setup()
vim.keymap.set("n", "<leader>ts", function() MiniTrailspace.trim() end, { desc = "Trim trail spaces" })
vim.keymap.set("n", "<leader>tl", function() MiniTrailspace.trim_last_lines() end, { desc = "Remove empty lines" })

-- Git
local MiniDiff = require("mini.diff")
MiniDiff.setup({
  view = {
    style = 'sign',
  },
})

-- Clues
local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Leader triggers
    { mode = { 'n', 'x' }, keys = '<Leader>' },

    -- `[` and `]` keys
    { mode = 'n',          keys = '[' },
    { mode = 'n',          keys = ']' },

    -- Built-in completion
    { mode = 'i',          keys = '<C-x>' },

    -- `g` key
    { mode = { 'n', 'x' }, keys = 'g' },

    -- Marks
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },

    -- Registers
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },

    -- Window commands
    { mode = 'n',          keys = '<C-w>' },

    -- `z` key
    { mode = { 'n', 'x' }, keys = 'z' },
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.square_brackets(),
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },
})

--- Cmdline completion
require("mini.cmdline").setup()

-- Pairs
require("mini.pairs").setup()

-- Icons
require("mini.icons").setup()

-- Statusline
require("mini.statusline").setup()

-- Tabline
require("mini.tabline").setup()
