-- Shared keymaps (VSCode + native)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })

if vim.g.vscode then
  vim.keymap.set("n", "]b", "<Cmd>Tabnext<CR>")
  vim.keymap.set("n", "[b", "<Cmd>Tabprev<CR>")
  return
end

vim.keymap.set("n", "<leader>ps", vim.pack.update, { desc = "Update packages" })
