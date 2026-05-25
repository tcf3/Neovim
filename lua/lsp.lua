-- Toogle LSP warnings in current buffer
vim.keymap.set("n", "<leader>ll", function()
  local bufnr = vim.api.nvim_get_current_buf()

  local enabled = vim.diagnostic.is_enabled({ bufnr = bufnr })
  vim.diagnostic.enable(not enabled, { bufnr = bufnr })

  vim.notify("Diagnostics " .. (enabled and "disabled" or "enabled"), vim.log.levels.INFO, { title = "LSP" })
end, { desc = "Toggle diagnostics (buffer)" })

-- Toogle virtual text
vim.keymap.set("n", "<leader>lv", function()
  local current = vim.diagnostic.config().virtual_text

  vim.diagnostic.config({
    virtual_text = not current,
  })
end, { desc = "Toogle virtual text" })

vim.keymap.set("n", "<leader>lq", function() Snacks.picker.diagnostics_buffer() end, { desc = "Quickfix list (buffer)" })
vim.keymap.set("n", "<leader>lQ", function() Snacks.picker.diagnostics() end, { desc = "Quickfix list (global)" })

vim.keymap.set("n", "<leader>lD", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "<leader>lF", vim.lsp.buf.format, { desc = "Format Local buffer" })

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
    },
  }
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

vim.lsp.config("ansiblels", {
  filetype = { 'yaml' }
})

vim.lsp.enable({
  "lua_ls",
  "ansiblels",
  "pyright",
})
