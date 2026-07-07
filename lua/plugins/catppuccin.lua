return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			dim_inactive = {
				enabled = true,
				percentage = 0.15,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
