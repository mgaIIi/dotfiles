return {
	{
		"stevearc/conform.nvim",
		opts = {},
		lazy = false,
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "ruff" },
					javascript = { "biome" },
					typescript = { "biome" },
					rust = { "rustfmt" },
					svelte = { "prettier" },
					go = { "gofmt", "gofumpt", "goimports" },
				},

				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},
}
