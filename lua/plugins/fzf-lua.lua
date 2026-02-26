-- cmd = FzfLua

vim.pack.add({
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/ibhagwan/fzf-lua" },
})

require("fzf-lua").setup()

vim.keymap.set("n", "<C-p>", "<cmd>FzfLua files<cr>", { desc = "Find file" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "[F]zf [B]uffers" })
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "[F]zf [F]iles" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua grep<cr>", { desc = "[F]zf [G]rep" })
vim.keymap.set("n", "<leader>fl", "<cmd>FzfLua live_grep<cr>", { desc = "[F]zf [L]ive grep" })
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua builtin<cr>", { desc = "[F]zf pic[K]ers" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>", { desc = "[F]zf [R]ecent files" })
