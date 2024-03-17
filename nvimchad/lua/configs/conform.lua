local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    rust = { "rustfmt" },
    python = { "ruff" },
    go = { "gofmt" },
    javascript = { "biome" },
    typescript = { "biome" },
    json = { "prettier" },
  },
}

require("conform").setup(options)
