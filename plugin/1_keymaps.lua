-- Shared keymaps (VSCode + native)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })

-- VSCode-specific keymaps
if vim.g.vscode then
  vim.keymap.set("x", "gc", "<Plug>VSCodeCommentary")
  vim.keymap.set("n", "gc", "<Plug>VSCodeCommentary")
  vim.keymap.set("o", "gc", "<Plug>VSCodeCommentary")
  vim.keymap.set("n", "gcc", "<Plug>VSCodeCommentaryLine")
  vim.keymap.set("n", "]b", "<Cmd>Tabnext<CR>")
  vim.keymap.set("n", "[b", "<Cmd>Tabprev<CR>")

  return
end

-- Native Neovim keymaps
vim.keymap.set("n", "<leader>ps", "<cmd>lua vim.pack.update()<CR>", { desc = "Update packages" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to clipboard" })
vim.keymap.set("v", "<D-c>", '"+y', { desc = "Copy selection to clipboard (Cmd-C)" })
