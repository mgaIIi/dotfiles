return {
	{
		"npxbr/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" },
		lazy = false,
		name = "gruvbox",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
