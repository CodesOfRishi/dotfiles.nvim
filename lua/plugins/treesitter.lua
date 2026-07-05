return {
	"romus204/tree-sitter-manager.nvim",
	dependencies = {},
	config = function()
		require("tree-sitter-manager").setup({
			ensure_installed = { "c", "cpp", "toml", "bash", "python", "lua", "html" },
			indent = { enable = true, },
			highlight = { enable = true, },
		})
	end,
}
