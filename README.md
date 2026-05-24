# Neovim Config

This config turns Neovim into an IDE.

## Plugins

- [onedark.nvim](https://github.com/navarasu/onedark.nvim) — colorscheme
- [mini.nvim](https://github.com/nvim-mini/mini.nvim) — files, completion, snippets, surround, diff, statusline, icons, and more
- [snacks.nvim](https://github.com/folke/snacks.nvim) — explorer, picker, scroll, indent
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP configuration
- [mason.nvim](https://github.com/mason-org/mason.nvim) — LSP servers, DAP servers, linters, and formatters installer
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) — snippet collection

## Dependencies

- Neovim >= 0.10
- [ripgrep](https://github.com/BurntSushi/ripgrep) — grep backend
- Nerd Font — icons
- Git

### macOS

```sh
brew install neovim ripgrep
brew install --cask font-jetbrains-mono-nerd-font
```

### Linux (Debian/Ubuntu)

```sh
sudo apt install neovim ripgrep git
```

### Linux (Arch)

```sh
sudo pacman -S neovim ripgrep git
```

Install a Nerd Font (e.g. [JetBrainsMono](https://www.nerdfonts.com/font-downloads)) and set it in your terminal emulator.
