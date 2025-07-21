return {
	"OXY2DEV/markview.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		preview = {
			modes = { "n", "no", "c" },
			hybrid_modes = { "i" },
			callbacks = {
				on_enable = function (_, win)
					vim.wo[win].conceallevel = 2;
					vim.wo[win].conecalcursor = "nc";
				end
			},
		},
	},
	enabled = false,
}
