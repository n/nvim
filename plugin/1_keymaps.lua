-- Shared keymaps (VSCode + native)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })

if vim.g.vscode then
  vim.keymap.set("n", "]b", "<Cmd>Tabnext<CR>")
  vim.keymap.set("n", "[b", "<Cmd>Tabprev<CR>")
  return
end

-- vim.pack never uninstalls plugins dropped from the config, so remove any not added this session.
vim.keymap.set("n", "<leader>ps", function()
  local unused = vim
    .iter(vim.pack.get(nil, { info = false }))
    :filter(function(p)
      return not p.active
    end)
    :map(function(p)
      return p.spec.name
    end)
    :totable()
  if #unused > 0 then
    vim.pack.del(unused)
  end
  vim.pack.update()
end, { desc = "Clean and update packages" })
