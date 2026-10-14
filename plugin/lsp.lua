if vim.g.vscode then
  return
end

vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp#", { clear = true }),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

    if client:supports_method("textDocument/definition") then
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf, desc = "Go to definition" })
    end
    if client:supports_method("textDocument/declaration") then
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = args.buf, desc = "Go to declaration" })
    end

    if client:supports_method("textDocument/inlayHint") then
      vim.keymap.set("n", "yoh", function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = args.buf }), { bufnr = args.buf })
      end, { buffer = args.buf, desc = "Toggle inlay hints" })
    end
  end,
})

-- Defaults come from nvim-lspconfig's lsp/<name>.lua; overrides live in after/lsp/<name>.lua.
vim.lsp.enable({
  "astro",
  "basedpyright",
  "bashls",
  "gopls",
  "lua_ls",
  "nixd",
  "tailwindcss",
  "ts_ls",
})
