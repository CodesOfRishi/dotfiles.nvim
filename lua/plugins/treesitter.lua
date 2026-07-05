return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ensure_installed = { "c", "cpp", "bash", "python", "lua", "html" }
		local installed = require("nvim-treesitter.config").get_installed() -- or .installed_parsers()
		local to_install = vim.tbl_filter(function(lang)
			return not vim.tbl_contains(installed, lang)
		end, ensure_installed)

		if #to_install > 0 then
			require("nvim-treesitter").install(to_install)
		end
	end,
}
