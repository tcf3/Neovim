-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Restore last cursor position when reopening a file
local last_cursor_group = vim.api.nvim_create_augroup("LastCursorGroup", {})
vim.api.nvim_create_autocmd("BufReadPost", {
  group = last_cursor_group,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Highlight the yanked text for 200ms
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYank", {})
vim.api.nvim_create_autocmd("TextYankPost", {
  group = highlight_yank_group,
  pattern = "*",
  callback = function()
    vim.hl.on_yank({
      higroup = "IncSearch",
      timeout = 200,
    })
  end,
})

-- Auto resize splits when the terminal's window is resized
vim.api.nvim_create_autocmd("VimResized", {
  command = "wincmd =",
})

-- No auto continue comments on new line
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("no_auto_comment", {}),
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Syntax highlighting for dotenv files
vim.api.nvim_create_autocmd("BufRead", {
  group = vim.api.nvim_create_augroup("dotenv_ft", { clear = true }),
  pattern = { ".env", ".env.*" },
  callback = function()
    vim.bo.filetype = "dosini"
  end,
})

-- Show cursorline only in active window enable
vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
  group = vim.api.nvim_create_augroup("active_cursorline", { clear = true }),
  callback = function()
    vim.opt_local.cursorline = true
  end,
})

-- Show cursorline only in active window disable
vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  group = "active_cursorline",
  callback = function()
    vim.opt_local.cursorline = false
  end,
})

-- ide like highlight when stopping cursor
--vim.api.nvim_create_autocmd("CursorMoved", {
--  group = vim.api.nvim_create_augroup("LspReferenceHighlight", { clear = true }),
--  desc = "Highlight references under cursor",
--  callback = function()
--    -- Only run if the cursor is not in insert mode
--    if vim.fn.mode() ~= "i" then
--      local clients = vim.lsp.get_clients({ bufnr = 0 })
--      local supports_highlight = false
--      for _, client in ipairs(clients) do
--        if client.server_capabilities.documentHighlightProvider then
--          supports_highlight = true
--          break -- Found a supporting client, no need to check others
--        end
--      end
--
--      -- 3. Proceed only if an LSP is active AND supports the feature
--      if supports_highlight then
--        vim.lsp.buf.clear_references()
--        vim.lsp.buf.document_highlight()
--      end
--    end
--  end,
--})
--
---- ide like highlight when stopping cursor
--vim.api.nvim_create_autocmd("CursorMovedI", {
--  group = "LspReferenceHighlight",
--  desc = "Clear highlights when entering insert mode",
--  callback = function()
--    vim.lsp.buf.clear_references()
--  end,
--})

