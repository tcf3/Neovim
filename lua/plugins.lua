-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer
  use {
    'wbthomason/packer.nvim'
  }

  -- Telescope
  use { 
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use { 
    'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
  }

end)
