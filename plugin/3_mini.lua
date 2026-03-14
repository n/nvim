if vim.g.vscode then
  return
end

vim.pack.add({
  "https://github.com/nvim-mini/mini.tabline",
  "https://github.com/nvim-mini/mini.files",
})

require("mini.tabline").setup()
require("mini.files").setup()

vim.keymap.set("n", "<leader>fe", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0), false)
end, { desc = "Open file explorer (mini.files)" })
