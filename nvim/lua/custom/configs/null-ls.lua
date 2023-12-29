local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  -- python3
  b.formatting.black,
  b.diagnostics.ruff,
  b.diagnostics.mypy,
  -- Lua
  b.formatting.stylua,
  -- Go  
  b.formatting.gofumpt,
  b.formatting.goimports_reviser,
  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
  autostart = true,
}
