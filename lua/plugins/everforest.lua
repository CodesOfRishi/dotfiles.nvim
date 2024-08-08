return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	config = function()
		require("everforest").setup({})
		vim.cmd.colorscheme("everforest")
	end,
}
