return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"basedpyright", "bashls"
			}
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
			config = function()
				vim.lsp.config("bashls", {
					settings = {
						bashIde = {
							shellcheckPath = "/home/rishi/.local/bin/shellcheck",
						},
					},
				})
				vim.lsp.enable("bashls")
			end,
		},
	},
}
