-- cmd = ConformInfo

vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
  formatters_by_ft = {
    go = { "gofumpt", "goimports" },
    -- lua_ls has a built-in formatter that we disable.
    lua = { "stylua" },
    -- Ruff fix/organize imports are not handled by the LSP server basedpyright.
    python = {
      "ruff_fix",
      "ruff_format",
      "ruff_organize_imports",
    },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    ["markdown.mdx"] = { "prettier" },
  },
  -- Set default options
  default_format_opts = {
    lsp_format = "fallback",
  },
  -- Set up format-on-save
  format_on_save = { timeout_ms = 500 },
  -- Disable format on save for Go files (handled by gopls and ftplugin)
  -- format_on_save = function(bufnr)
  --   if vim.bo[bufnr].filetype == "go" then
  --     return false -- Handled by ftplugin & gopls
  --   end
  --   return { timeout_ms = 500 }
  -- end,
})
