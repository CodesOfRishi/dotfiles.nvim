return {
	"OXY2DEV/markview.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	ft = { "md", "markdown", "mdown", "mkdn", "mkd", "mdwn", "mdtxt", "mdtext" },
	event = "BufReadPre",
	opts = {
		-- markdown = {
		-- 	headings = require("markview.presets").headings.presets.simple
		-- },
		markdown_inline ={
			tags = {
				default = {
					hl = "MarkviewCodeInfo",
					padding_left = "",
					padding_left_hl = "MarkviewCodeFg",
					padding_right = "",
					padding_right_hl = "MarkviewCodeFg"
				},
				enable = true,
			},
		},
		preview = {
			modes = { "n", "no", "c" },
			hybrid_modes = { "i" },
			icon_provider = "devicons",
			callbacks = {
				on_enable = function (_, win)
					vim.wo[win].conceallevel = 2;
					vim.wo[win].concealcursor = "nc";
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
