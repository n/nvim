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
  -- Unsaved files open at their parent directory; terminals and scratch buffers at cwd.
  local path = vim.api.nvim_buf_get_name(0)
  local dir = vim.fs.dirname(path)
  require("mini.files").open(vim.uv.fs_stat(path) and path or vim.uv.fs_stat(dir) and dir or nil, false)
end, { desc = "Open file explorer (mini.files)" })
