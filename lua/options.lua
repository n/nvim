-- Persistent undo
local undodir = vim.fn.stdpath("state") .. "/undo"
vim.fn.mkdir(undodir, "p")   -- Create undo directory
vim.opt.undodir = undodir    -- Set undo directory
vim.opt.undofile = true      -- Enable persistent undo
vim.opt.undolevels = 1000000 -- Maximum number of undo levels

-- General
vim.opt.number = true         -- Show line numbers
vim.opt.signcolumn = "yes"    -- Show sign column
vim.opt.tabstop = 2           -- Number of spaces for a tab
vim.opt.shiftwidth = 2        -- Number of spaces for a shift
vim.opt.expandtab = true      -- Expand tabs to spaces
vim.opt.winborder = "rounded" -- Rounded border type for floating windows

-- Diagnostics
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    source = "if_many",
    spacing = 4,
  },
  float = {
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
})
