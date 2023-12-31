return{
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"HiPhish/nvim-ts-rainbow2"
	},
	config = function()
		local treesitter = require "nvim-treesitter.configs"

		treesitter.setup{
			ensure_installed = { "lua", "vim", "vimdoc", "query" },
			sync_install = false,
			auto_install = false,

			-- ignore_install = { "javascript" },

			highlight = {
				enable = true,
				disable = { "c", "rust" },
				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
				additional_vim_regex_highlighting = false,
			},

			rainbow = {
				enable = true,
				query = 'rainbow-parens',
				strategy = require('ts-rainbow').strategy.global,
			}

		}
	end
}
