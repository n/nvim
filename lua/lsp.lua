local group = vim.api.nvim_create_augroup("lsp#", { clear = true })

vim.lsp.config("*", { root_markers = { ".git" } })

vim.api.nvim_create_autocmd("LspAttach", {
  group = group,
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- No default LSP mapping for gd/gD — the gr* prefix convention
    -- avoids shadowing the built-in Vim gd motion (pattern search).
    if client:supports_method("textDocument/definition") then
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf, desc = "Go to definition" })
    end
    if client:supports_method("textDocument/declaration") then
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = args.buf, desc = "Go to declaration" })
    end

    if client:supports_method("textDocument/inlayHint") then
      vim.keymap.set("n", "yoh", function()
        local enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = args.buf })
        vim.lsp.inlay_hint.enable(not enabled, { bufnr = args.buf })
      end, { buffer = args.buf, desc = "Toggle inlay hints" })
    end
  end,
})

-- Per-server overrides are in 'after/lsp/<server>.lua'
-- These are merged with nvim-lspconfig's defaults automatically

-- Enable servers
-- https://github.com/neovim/nvim-lspconfig/tree/master/lsp
for _, server in ipairs({
  "astro",
  "basedpyright",
  "bashls",
  "gopls",
  "lua_ls",
  "nixd",
  "tailwindcss",
  "ts_ls",
}) do
  vim.lsp.enable(server)
end
