return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate", -- When upgrading the treesitter, all installed parsers are updated to the latest version 
	opts = {
		ensure_installed = { "c", "cpp", "java", "toml", "bash", "python", "lua" },
	},
}
