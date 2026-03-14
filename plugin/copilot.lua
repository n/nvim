if vim.g.vscode then
  return
end

vim.schedule(function()
  vim.pack.add({ "https://github.com/github/copilot.vim" })
end)
