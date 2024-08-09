return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		sections = {
			lualine_c = {
				{
					'filename',
					new_file = true, -- Display new file status (new file means no write after created)
					path = 1, -- relative path
				}, 
			},
			lualine_x = { 'filesize', 'encoding', 'fileformat', 'filetype' },
		},
	},
}
