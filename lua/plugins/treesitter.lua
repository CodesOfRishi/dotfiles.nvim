return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = true,
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
	build = ":TSUpdate",
	config = function()
		local ensure_installed = { "c", "cpp", "bash", "zsh", "python", "lua", "vimdoc", "toml", "diff" }
		local installed = require("nvim-treesitter.config").get_installed() -- or .installed_parsers()
		local to_install = vim.tbl_filter(function(lang)
			return not vim.tbl_contains(installed, lang)
		end, ensure_installed)

		if #to_install > 0 then
			require("nvim-treesitter").install(to_install)
		end
	end,
}
