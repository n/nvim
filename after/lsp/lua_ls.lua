-- https://luals.github.io/wiki/settings/
return {
  settings = {
    Lua = {
      format = { enable = false },
      runtime = { version = "LuaJIT" },
      workspace = { checkThirdParty = false },
      diagnostics = { globals = { "vim" } },
      telemetry = { enable = false },
      hint = { enable = true },
    },
  },
}
