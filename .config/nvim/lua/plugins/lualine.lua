return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = {
		
		options = {
			theme = "palenight",
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "filename" },
			lualine_c = { "g:coc_status" },
			lualine_x = { "branch" },
			lualine_y = { "encoding" },
			lualine_z = { "location" }
		}
	}
}
