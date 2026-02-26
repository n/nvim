vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("options")
require("keymaps")

if vim.g.vscode then
  return
end

require("lsp")

for name in vim.fs.dir(vim.fn.stdpath("config") .. "/lua/plugins") do
  if name:match("%.lua$") then
    require("plugins." .. name:gsub("%.lua$", ""))
  end
end
