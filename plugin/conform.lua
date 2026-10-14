if vim.g.vscode then
  return
end

vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

local prettier = { "prettierd", "prettier", stop_after_first = true }

require("conform").setup({
  formatters_by_ft = {
    go = { "goimports", "gofumpt" },
    lua = { "stylua" },
    -- basedpyright doesn't fix or organize imports.
    python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },
    javascript = prettier,
    javascriptreact = prettier,
    typescript = prettier,
    typescriptreact = prettier,
    css = prettier,
    html = prettier,
    yaml = prettier,
    markdown = prettier,
    json = prettier,
    jsonc = prettier,
  },
  default_format_opts = { lsp_format = "fallback" },
  -- The timeout covers the whole formatter chain, and a cold prettier start alone can take ~500ms.
  format_on_save = { timeout_ms = 2000 },
})
