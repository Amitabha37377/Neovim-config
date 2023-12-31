return {
	{
		'navarasu/onedark.nvim',
		priority = 1000,
		lazy = false,
		config = function()
			local onedark = require "onedark"
			onedark.setup {
				style = 'deep',
				transparent = false,
				term_colors = true,
				ending_tildes = false,
				cmp_itemkind_reverse = false,

				code_style = {
					comments = 'italic',
					keywords = 'none',
					functions = 'none',
					strings = 'none',
					variables = 'none'
				},

				lualine = {
					transparent = false,
				},

				-- Plugins Config --
				diagnostics = {
					darker = true,
					undercurl = true,
					background = false,
				},
			}

			vim.cmd [[colorscheme onedark]]
		end
	}
}
