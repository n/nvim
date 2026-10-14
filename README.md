# nvim

My personal Neovim 0.12 config. Uses native `vim.pack` for plugins. Works with [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) (options + keymaps only).

## Structure

- `plugin/0_options.lua`: editor options, diagnostics config
- `plugin/1_keymaps.lua`: global keymaps
- `plugin/2_deps.lua`: shared dependencies
- `plugin/2_tokyonight.lua`: colorscheme, loaded before plugins that derive highlights from it
- `plugin/*.lua` (unprefixed): all other plugins, in any order
- `plugin/treesitter.lua`: starts treesitter highlighting; parsers and queries come from Nix (`nixos-config/users/nick/neovim.nix`)
- `after/lsp/`: per-server LSP overrides (merged with nvim-lspconfig defaults)
- `after/ftplugin/`: filetype-specific settings
