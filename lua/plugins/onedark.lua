return {
	"navarasu/onedark.nvim",
	lazy = false,
	opts = {
		style = "warmer",
	},
	config = function()
		vim.cmd.colorscheme("onedark")
	end,
	enabled = false,
}
