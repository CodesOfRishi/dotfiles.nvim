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
	},
	enabled = true,
}
