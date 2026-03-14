if vim.g.vscode then
  return
end

vim.pack.add({ "https://github.com/folke/tokyonight.nvim" })

vim.cmd([[colorscheme tokyonight]])
