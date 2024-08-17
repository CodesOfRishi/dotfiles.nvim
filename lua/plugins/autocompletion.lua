return {
	-- {
	-- 	"saadparwaiz1/cmp_luasnip",
	-- 	dependencies={ "L3MON4D3/LuaSnip", "hrsh7th/nvim-cmp" },
	-- 	enabled = false,
	-- },
	{
		"hrsh7th/cmp-buffer",
		dependencies = { "hrsh7th/nvim-cmp" },
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require'cmp'

			-- snippet = {
			-- 	expand = function(args)
			-- 		require'luasnip'.lsp_expand(args.body)
			-- 	end,
			-- },
			cmp.setup({
				mapping = {
					-- when in Insert mode & menu is on display, hit Tab to select next item
					['<Tab>'] = cmp.mapping(
						function(fallback)
							if cmp.visible() then
								cmp.select_next_item()
							else
								fallback()
							end
						end, { "i" }
					),
					-- when in Insert mode & menu is on display, hit Shift+Tab to select previous item
					['<S-Tab>'] = cmp.mapping(
						function(fallback)
							if cmp.visible() then
								cmp.select_prev_item()
							else
								fallback()
							end
						end, { "i" }
					),
					-- when in Insert mode & menu is on diplay, hit Ctrl+j to scroll the documentation window downward
					['<C-j>'] = cmp.mapping(
						function(fallback)
							if cmp.visible() then
								cmp.scroll_docs(4)
							else
								fallback()
							end
						end, { "i" }
					),
					-- when in Insert mode & menu is on diplay, hit Ctrl+k to scroll the documentation window upward
					['<C-k>'] = cmp.mapping(
						function(fallback)
							if cmp.visible() then
								cmp.scroll_docs(-4)
							else
								fallback()
							end
						end, { "i" }
					),
					-- when in Insert mode & menu is on display, hit Enter to accepts the currently selected completion item.
					['<CR>'] = cmp.mapping(
						function(fallback)
							if cmp.visible() then
								cmp.confirm({  select = true  })
							else 
								fallback()
							end
						end, { "i" }
					),
					-- when in Insert mode, invoke completion
					['<C-c>'] = cmp.mapping(function() cmp.complete() end, { "i" }),
					-- when the completion menu is on display, close it
					['<C-q>'] = cmp.mapping(
						function(fallback)
							if cmp.visible() then
								cmp.abort()
							else
								fallback()
							end
						end
					),
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				sources = cmp.config.sources({
					-- { name = "luansip" },
					{ name = "buffer" },
				}),
			})
		end,
	}
}
