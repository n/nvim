if vim.g.vscode then
  return
end

vim.schedule(function()
  vim.pack.add({ "https://github.com/folke/trouble.nvim" })

  require("trouble").setup()

  vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
  vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
  vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
  vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=true win.position=bottom<cr>", { desc = "LSP Definitions / references / ... (Trouble)" })
  vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
  vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
end)
