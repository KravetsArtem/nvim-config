return {
	{
		'akinsho/toggleterm.nvim', 
		version = "*", 
		config = true,
		keys = {
			{"<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc="Toggle float terminal"},
			{"<leader>tt", "<cmd>ToggleTerm<cr>", desc="Toggle horizontal terminal"},
		},
		config = function() 
			require("toggleterm").setup{
				float_opts = {
					border = 'curved'
				}
			}
		end,
	}
}
