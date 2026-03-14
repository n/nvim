# nvim

My personal Neovim 0.12 config. Uses native `vim.pack` for plugins. Works with [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) (options + keymaps only).

## Structure

- `plugin/0_options.lua` — editor options, diagnostics config
- `plugin/1_keymaps.lua` — global keymaps
- `plugin/2_deps.lua` — shared dependencies
- `plugin/3_*.lua` — startup-critical plugins (colorscheme, statusline, treesitter, mini)
- `plugin/*.lua` — deferred plugins loaded via `vim.schedule`
- `after/lsp/` — per-server LSP overrides (merged with nvim-lspconfig defaults)
- `after/ftplugin/` — filetype-specific settings
