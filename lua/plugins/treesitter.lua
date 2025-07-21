return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate", -- When upgrading the treesitter, all installed parsers are updated to the latest version 
	config = function()
		require("nvim-treesitter.configs").setup {
			ensure_installed = { "c", "cpp", "toml", "bash", "python", "lua", "html" },
			indent = { enable = true, },
			highlight = { enable = true, },
		}
	end,
}
