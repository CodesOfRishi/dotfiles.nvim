-- Setup lazy.nvim
require("lazy").setup({
	git = {
	  timeout = 300, -- kill processes that take more than 5 minutes
	},
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},

	-- Configure any other settings here. See the documentation for more details.

	-- colorscheme that will be used when installing plugins.
	-- install = { colorscheme = { "habamax" } },

	-- -- automatically check for plugin updates
	-- checker = { enabled = true },
})

-- Load Onedark theme
-- require('onedark').load()

-- Load Tokyonight theme
-- vim.cmd[[colorscheme tokyonight-storm]]

-- Load Everforest theme
vim.cmd([[colorscheme everforest]])
