vim.pack.add({
  { src = "https://github.com/nvim-mini/mini.tabline", version = "main" },
  { src = "https://github.com/nvim-mini/mini.files", version = "main" },
})

require("mini.tabline").setup()
require("mini.files").setup()

vim.keymap.set("n", "<leader>fe", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0), false)
end, { desc = "Open file explorer (mini.files)" })
