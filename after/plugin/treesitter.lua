vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		-- Start Treesitter highlighting (disables legacy regex syntax)
		pcall(vim.treesitter.start)

		-- Treesitter-based indentation (experimental but good)
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
