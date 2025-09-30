vim.diagnostic.enable = true
vim.diagnostic.config({
  virtual_lines = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
    },
  }
})

vim.lsp.enable({
  'lua_ls',
  'pyright',
  'ansiblels',
  'yamlls'
})
