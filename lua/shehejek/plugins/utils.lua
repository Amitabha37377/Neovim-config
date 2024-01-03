return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		opts = {
			highlights = {
				Normal = { guibg = "none", },
				NormalFloat = { link = 'Normal' },
				FloatBorder = { guibg = "none", },
			},
		}
	},
	{
		'NvChad/nvim-colorizer.lua',
		opts = {
			-- filetypes = { "*" },
			filetypes = {
				'*',
				cmp_docs = { always_update = true }
			},
			user_default_options = {
				-- RGB = true,
				-- RRGGBB = true,
				-- names = false,
				-- RRGGBBAA = true,
				-- AARRGGBB = false,
				-- rgb_fn = false,
				-- hsl_fn = false,
				-- css = false,
				-- css_fn = false,
				-- mode = "background",
				tailwind = true,
				-- sass = { enable = false, parsers = { "css" }, },
				-- virtualtext = "■",
				-- always_update = true
			},
			-- buftypes = {},
		}

	}
}
