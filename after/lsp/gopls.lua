-- https://go.dev/gopls/settings
local root_dir = vim.fs.root(0, { "go.mod", ".git" }) or vim.fn.getcwd()
local local_settings = {}

-- Check for project-local .gopls.lua
-- This allows per-project overrides of gopls settings without modifying this file.
-- Example:
-- return {
--   ["local"] = "project",
-- }
local local_path = root_dir .. "/.gopls.lua"
if vim.uv.fs_stat(local_path) then
  local_settings = dofile(local_path)
end

return {
  settings = {
    gopls = vim.tbl_deep_extend("force", {
      gofumpt = true,
      staticcheck = true,
      analyses = { unusedparams = true },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        ignoredError = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    }, local_settings),
  },
}
