return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate", -- When upgrading the treesitter, all installed parsers are updated to the latest version 
	opts = {
			ensure_installed = { "c", "cpp", "toml", "bash", "python", "lua", "html" },
			indent = { enable = true, },
			highlight = { enable = true, },
	},
}
