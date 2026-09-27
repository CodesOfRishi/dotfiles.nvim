return {
	"OXY2DEV/markview.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	ft = { "md", "markdown", "mdown", "mkdn", "mkd", "mdwn", "mdtxt", "mdtext" },
	event = "BufReadPre",
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
		latex = {
			enable = true,
			symbols = {
				enable = true,
				hl = "MarkviewComment"
			},
			blocks = {
				enable = true,
				hl = "MarkviewCode",
				pad_char = " ",
				pad_amount = 3,
				text = "  LaTeX ",
				text_hl = "MarkviewCodeInfo"
			},
		},
		typst = {
			enable = true,
			symbols = {
				enable = true,
				hl = "Special"
			},
		},
	},
	enabled = true,
}
