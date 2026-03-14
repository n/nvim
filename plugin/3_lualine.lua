if vim.g.vscode then
  return
end

vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

require("lualine").setup()
