# Neovim Config

This config turns Neovim into an IDE.

## Plugins

- [onedark.nvim](https://github.com/navarasu/onedark.nvim) — colorscheme
- [mini.nvim](https://github.com/nvim-mini/mini.nvim) — files, completion, snippets, surround, diff, statusline, icons, and more
- [snacks.nvim](https://github.com/folke/snacks.nvim) — explorer, picker, scroll, indent
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP configuration
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) — snippet collection

## Dependencies

- Neovim >= 0.10
- ripgrep
- Nerd Font — icons
- Git

### Basic Packages

```sh
brew install neovim ripgrep font-jetbrains-mono-nerd-font
```

### Language Servers & Formaters/Lint

```sh
brew install lua-language-server ansible-language-server pyright
```
