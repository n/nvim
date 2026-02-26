-- cmd: WhichKey

vim.pack.add({
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/folke/which-key.nvim" },
})

require("which-key").setup({
  preset = "modern",
})
