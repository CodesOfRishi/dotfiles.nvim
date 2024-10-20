return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	config = function()
		require("catppuccin").setup({
			dim_inactive = {
				enabled = true,
				percentage = 0.05,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
	enabled = false,
}
