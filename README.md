# nvim

My personal Neovim 0.12 config. Uses native `vim.pack` for plugins. Works with [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) (options + keymaps only).

Nix ([`nixos-config/users/nick/neovim.nix`](https://github.com/n/nixos-config/blob/main/users/nick/neovim.nix)) installs the external tools this config expects: LSP servers, formatters, and treesitter parsers and queries. Without them, the matching features stay off and highlighting falls back to regex syntax.
