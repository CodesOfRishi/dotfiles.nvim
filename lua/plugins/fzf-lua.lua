return {
	"ibhagwan/fzf-lua",
	lazy = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = "FzfLua",
	opts = {
		winopts = {
			preview = {
				layout = 'vertical',
				vertical = "down:70%",
			},
		},
		git = {
			commits = {
				prompt = "❱ ",
			},
		},
		buffers = {
			prompt = "❱ ",
		},
		colorschemes = {
			prompt = "❱ ",
			winopts = {
				row = 0, -- 0 means top of the screen
				col = 1, -- 1 means right edge of the screen
				relative = "editor", -- positions relative to the entire Neovim editor
				width = 0.5, -- takes up 50% of the screen width
				height = 0.4, -- takes up 40% of the height
			},
		},
	},
	enabled = true,
}
