# nvim

My personal Neovim 0.12 config. Uses native `vim.pack` for plugins. Works with [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) (options + keymaps only).

## Structure

- `init.lua` — entry point; sets leader keys, loads core modules and plugins
- `lua/options.lua` — editor options
- `lua/keymaps.lua` — global keymaps
- `lua/lsp.lua` — LSP server list and attach callbacks
- `lua/plugins/` — one file per plugin, each calls `vim.pack.add()` to declare and configure itself
- `after/lsp/` — per-server LSP overrides (merged with nvim-lspconfig defaults)
- `after/ftplugin/` — filetype-specific settings
