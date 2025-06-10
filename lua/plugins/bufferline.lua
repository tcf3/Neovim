return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {
        options = {
          mode = "tabs",
          separator_syle = "slope",
          numbers = "ordinal",
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "left",
              separator = true
            }
          },
          hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' }
          }
        },
      }
    end
  }
}
