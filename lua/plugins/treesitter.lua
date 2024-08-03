return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate", -- When upgrading the treesitter, all installed parsers are updated to the latest version 
	lazy = false,
	opts = {
		ensure_installed = { "c", "cpp", "java", "toml", "bash", "python", "lua" },
	},
}
