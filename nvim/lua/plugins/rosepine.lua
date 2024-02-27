return {
	{
		"rose-pine/nvim",
		lazy = false,
		name = "rose-pine",
		priority = 900,
		config = function()
	  	  vim.cmd.colorscheme("rose-pine")
		end,
	},
}
